# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2021 Rother OSS GmbH, https://otobo.de/
# --
# $origin:  - 82d27dbf8015e9d7e4da3d0a4628369d84cc441d - Kernel/Modules/AgentITSMChangeAddFromTemplate.pm
# --
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
# --

package Kernel::Modules::AgentITSMChangeAddFromTemplate;

use strict;
use warnings;

use Kernel::Language qw(Translatable);

our $ObjectManagerDisabled = 1;

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # get config object
    my $ConfigObject = $Kernel::OM->Get('Kernel::Config');

    # get config of frontend module
    $Self->{Config} = $ConfigObject->Get("ITSMChange::Frontend::$Self->{Action}");

    # check permissions
    my $Access = $Kernel::OM->Get('Kernel::System::ITSMChange')->Permission(
        Type   => $Self->{Config}->{Permission},
        Action => $Self->{Action},
        UserID => $Self->{UserID},
    );

    # get layout object
    my $LayoutObject = $Kernel::OM->Get('Kernel::Output::HTML::Layout');

    # error screen
    if ( !$Access ) {
        return $LayoutObject->NoPermission(
            Message =>
                $LayoutObject->{LanguageObject}->Translate( 'You need %s permissions!', $Self->{Config}->{Permission} ),
            WithHeader => 'yes',
        );
    }

    # get param object
    my $ParamObject = $Kernel::OM->Get('Kernel::System::Web::Request');

    # store needed parameters in %GetParam to make it reloadable
    my %GetParam;
    for my $ParamName (
        qw(MoveTimeType MoveTimeYear MoveTimeMonth MoveTimeDay MoveTimeHour MoveTimeMinute TicketID TemplateID)
        )
    {
        $GetParam{$ParamName} = $ParamObject->GetParam( Param => $ParamName );
    }

    # store time related fields in %GetParam
    for my $TimePart (qw(Used Year Month Day Hour Minute)) {
        my $ParamName = 'MoveTime' . $TimePart;
        $GetParam{$ParamName} = $ParamObject->GetParam( Param => $ParamName );
    }

    # get log object
    my $LogObject = $Kernel::OM->Get('Kernel::System::Log');

    # Remember the reason why saving was not attempted.
    my %ValidationError;

    # the TicketID can be validated even without the Subaction 'Save',
    # as it is passed as GET-param or in a hidden field.
    if ( $GetParam{TicketID} ) {

        # get ticket data
        my %Ticket = $Kernel::OM->Get('Kernel::System::Ticket')->TicketGet(
            TicketID => $GetParam{TicketID},
        );

        # check if ticket exists
        if ( !%Ticket ) {

            # show error message
            return $LayoutObject->ErrorScreen(
                Message => $LayoutObject->{LanguageObject}->Translate(
                    'Ticket with TicketID %s does not exist!', $GetParam{TicketID}
                ),
                Comment => Translatable('Please contact the administrator.'),
            );
        }

        # get list of relevant ticket types
        my $AddChangeLinkTicketTypes = $ConfigObject->Get('ITSMChange::AddChangeLinkTicketTypes');

        # check the list of relevant ticket types
        if (
            !$AddChangeLinkTicketTypes
            || ref $AddChangeLinkTicketTypes ne 'ARRAY'
            || !@{$AddChangeLinkTicketTypes}
            )
        {

            # set error message
            my $Message = Translatable('Missing sysconfig option "ITSMChange::AddChangeLinkTicketTypes"!');

            # log error
            $LogObject->Log(
                Priority => 'error',
                Message  => $Message,
            );

            # show error message
            return $LayoutObject->ErrorScreen(
                Message => $Message,
                Comment => Translatable('Please contact the administrator.'),
            );
        }

        # get relevant ticket types
        my %IsRelevant = map { $_ => 1 } @{$AddChangeLinkTicketTypes};

        # check whether the ticket's type is relevant
        if ( !$IsRelevant{ $Ticket{Type} } ) {

            # set error message
            my $Message = "Invalid ticket type '$Ticket{Type}' for directly linking a ticket with a change. "
                . 'Only the following ticket type(s) are allowed for this operation: '
                . join ',', @{$AddChangeLinkTicketTypes};

            # log error
            $LogObject->Log(
                Priority => 'error',
                Message  => $Message,
            );

            # show error message
            return $LayoutObject->ErrorScreen(
                Message => $Message,
                Comment => Translatable('Please contact the administrator.'),
            );
        }
    }

    # get template object
    my $TemplateObject = $Kernel::OM->Get('Kernel::System::ITSMChange::Template');

    # create change from template
    if ( $Self->{Subaction} eq 'CreateFromTemplate' ) {

        my $NewTime;

        # check validity of the time type
        my $MoveTimeType = $GetParam{MoveTimeType};
        if (
            !defined $MoveTimeType
            || ( $MoveTimeType ne 'PlannedStartTime' && $MoveTimeType ne 'PlannedEndTime' )
            )
        {
            $ValidationError{MoveTimeTypeInvalid} = 'ServerError';
        }

        # check the completeness of the time parameter list,
        # only hour and minute are allowed to be '0'
        if (
            !$GetParam{MoveTimeYear}
            || !$GetParam{MoveTimeMonth}
            || !$GetParam{MoveTimeDay}
            || !defined $GetParam{MoveTimeHour}
            || !defined $GetParam{MoveTimeMinute}
            )
        {
            $ValidationError{MoveTimeInvalid} = 'ServerError';
        }

        # get the system time from the input, if it can't be determined we have a validation error
        if ( !%ValidationError ) {

            # transform change planned time, time stamp based on user time zone
            %GetParam = $LayoutObject->TransformDateSelection(
                %GetParam,
                Prefix => 'MoveTime',
            );

            # format as timestamp
            my $PlannedTime = sprintf '%04d-%02d-%02d %02d:%02d:00',
                $GetParam{MoveTimeYear},
                $GetParam{MoveTimeMonth},
                $GetParam{MoveTimeDay},
                $GetParam{MoveTimeHour},
                $GetParam{MoveTimeMinute};

            # sanity check of the assembled timestamp
            $NewTime = $Self->_TimeStamp2Epoch(
                TimeStamp => $PlannedTime,
            );

            if ( !$NewTime ) {
                $ValidationError{MoveTimeInvalid} = 'ServerError';
            }
        }

        # check whether a template was selected
        if ( !$GetParam{TemplateID} ) {
            $ValidationError{TemplateIDServerError} = 'ServerError';
        }

        if ( !%ValidationError ) {

            # create change based on the template
            my $ChangeID = $TemplateObject->TemplateDeSerialize(
                TemplateID      => $ParamObject->GetParam( Param => 'TemplateID' ),
                UserID          => $Self->{UserID},
                NewTimeInEpoche => $NewTime,
                MoveTimeType    => $GetParam{MoveTimeType},
            );

            # change could not be created
            if ( !$ChangeID ) {

                # show error message, when adding failed
                return $LayoutObject->ErrorScreen(
                    Message => Translatable('Was not able to create change from template!'),
                    Comment => Translatable('Please contact the administrator.'),
                );
            }

            # if the change add mask was called from the ticket zoom
            if ( $GetParam{TicketID} ) {

                # Copy Ticket title and body to Change Title 
                if ( $Self->{Config}->{CopyTicketTitleandBodyToChange} == 1 ) {

                    my $ChangeObject       = $Kernel::OM->Get('Kernel::System::ITSMChange');
                    my $TemplateObject     = $Kernel::OM->Get('Kernel::System::ITSMChange::Template');
                    my $TicketObject       = $Kernel::OM->Get('Kernel::System::Ticket');
                    my $ArticleObject      = $Kernel::OM->Get('Kernel::System::Ticket::Article');
                    my $DynamicFieldObject = $Kernel::OM->Get('Kernel::System::DynamicField');
                    my $BackendObject      = $Kernel::OM->Get('Kernel::System::DynamicField::Backend');

                    my %Ticket = $TicketObject->TicketGet(
                        TicketID      => $GetParam{TicketID},
                        DynamicFields => 1,
                        UserID        => $Self->{UserID},
                    );

                    # get first article
                    my @Articles = $ArticleObject->ArticleList(
                        TicketID  => $GetParam{TicketID},
                        OnlyFirst => 1,
                    );

                    my $ArticleBackendObject = $ArticleObject->BackendForArticle(
                        $Articles[0]->%*,
                    );

                    my %Article = $ArticleBackendObject->ArticleGet(
                        $Articles[0]->%*,
                        DynamicFields => 0,
                    );

                    my $TemplateData = $TemplateObject->TemplateGet(
                        TemplateID => $ParamObject->GetParam( Param => 'TemplateID' ),
                        UserID      => $Self->{UserID},
                    );

                    if ( $TemplateData->{Name} && $Ticket{Title} || $Article{Subject} ) {

                        my $Change = $ChangeObject->ChangeGet(
                            ChangeID => $ChangeID,
                            UserID   => $Self->{UserID},
                            LogNo    => 1,      # optional, turns off logging when the change does not exist
                        );

                        my $HTMLUtilsObject = $Kernel::OM->Get('Kernel::System::HTMLUtils');

                        my $Success = $ChangeObject->ChangeUpdate(
                            ChangeID           => $ChangeID,
                            ChangeTitle        => $Ticket{Title},  # (optional)
                            Description        => $HTMLUtilsObject->ToHTML( String => $Article{Body} )."<br><br>".$Change->{Description}."<br><br>" || '',        # (optional)
                            UserID             => $Self->{UserID},
                        );
                    }
               }
              
               # Copy used template name to dynamic field, defined at ITSMChange::Frontend::AgentITSMChangeAddFromTemplate###TemplateField
               if ( $Self->{Config}->{TemplateField} ) {

                   my $DynamicField = $DynamicFieldObject->DynamicFieldGet(
                       Name => $Self->{Config}->{TemplateField},
                   );

                   my $Success = $BackendObject->ValueSet(
                       DynamicFieldConfig => $DynamicField,      # complete config of the DynamicField
                       ObjectID           => $ChangeID,                # ID of the current object that the field
                       Value              => $TemplateData->{Name},                   # Value to store, depends on backend type
                       UserID             => $Self->{UserID},
                   );
               }

               # copy dynamicfield ticket values to the change, defined at ITSMChange::Frontend::AgentITSMChangeAddFromTemplate###CopyTicketDynFieldToChangeDynField
               if ( $Self->{Config}->{CopyTicketDynFieldToChangeDynField} ) {

                   my %DynFieldConfig = %{$Self->{Config}->{CopyTicketDynFieldToChangeDynField}};

                   for my $FieldPair ( keys %DynFieldConfig ) {
                       my $TicketDynamicFieldValue = $Ticket{"DynamicField_".$FieldPair};
                       my $DynamicFieldChange      = $DynamicFieldObject->DynamicFieldGet(
                           Name => $DynFieldConfig{$FieldPair},
                       );
                       if ( $TicketDynamicFieldValue && $DynamicFieldChange  ) {

                           my $Success = $BackendObject->ValueSet(
                               DynamicFieldConfig => $DynamicFieldChange,
                               ObjectID           => $ChangeID,
                               Value              => $TicketDynamicFieldValue,
                               UserID             => $Self->{UserID},
                           );
                       }
                   }
               }

                # link ticket with newly created change
                my $LinkSuccess = $Kernel::OM->Get('Kernel::System::LinkObject')->LinkAdd(
                    SourceObject => 'Ticket',
                    SourceKey    => $GetParam{TicketID},
                    TargetObject => 'ITSMChange',
                    TargetKey    => $ChangeID,
                    Type         => 'Normal',
                    State        => 'Valid',
                    UserID       => $Self->{UserID},
                );

                # link could not be added
                if ( !$LinkSuccess ) {

                    # set error message
                    my $Message = "Change with ChangeID $ChangeID was successfully added, "
                        . "but a link to Ticket with TicketID $GetParam{TicketID} could not be created!";

                    # log error
                    $LogObject->Log(
                        Priority => 'error',
                        Message  => $Message,
                    );

                    # show error message
                    return $LayoutObject->ErrorScreen(
                        Message => $Message,
                        Comment => Translatable('Please contact the administrator.'),
                    );
                }
            }

            # redirect to zoom mask, when adding was successful
            return $LayoutObject->Redirect(
                OP => "Action=AgentITSMChangeZoom;ChangeID=$ChangeID",
            );
        }
    }

    # build template dropdown
    my $TemplateList = $TemplateObject->TemplateList(
        UserID        => $Self->{UserID},
        CommentLength => 15,
        TemplateType  => 'ITSMChange',
    );
    my $TemplateSelectionString = $LayoutObject->BuildSelection(
        Name         => 'TemplateID',
        Data         => $TemplateList,
        Class        => 'Modernize Validate_Required ' . ( $ValidationError{TemplateIDServerError} || '' ),
        TreeView     => 1,
        PossibleNone => 1,
    );

    # build drop-down with time types
    my $MoveTimeTypeSelectionString = $LayoutObject->BuildSelection(
        Name => 'MoveTimeType',
        Data => [
            {
                Key   => 'PlannedStartTime',
                Value => 'PlannedStartTime'
            },
            {
                Key   => 'PlannedEndTime',
                Value => 'PlannedEndTime'
            },
        ],
        SelectedID => $GetParam{MoveTimeType} || 'PlannedStartTime',
        Class      => 'Modernize Validate_Required ' . ( $ValidationError{MoveTimeTypeInvalid} || '' ),
    );

    # time period that can be selected from the GUI
    my %TimePeriod = %{ $ConfigObject->Get('ITSMWorkOrder::TimePeriod') };

    # add selection for the time
    my $MoveTimeSelectionString = $LayoutObject->BuildDateSelection(
        %GetParam,
        Format        => 'DateInputFormatLong',
        Prefix        => 'MoveTime',
        MoveTimeClass => 'Validate_Required ' . ( $ValidationError{MoveTimeInvalid} || '' ),
        Validate      => 1,
        %TimePeriod,
    );

    # output header
    my $Output = $LayoutObject->Header(
        Title => 'Add',
    );
    $Output .= $LayoutObject->NavigationBar();

    # get form id
    $Self->{FormID} = $ParamObject->GetParam( Param => 'FormID' );

    # create form id
    if ( !$Self->{FormID} ) {
        $Self->{FormID} = $Kernel::OM->Get('Kernel::System::Web::UploadCache')->FormIDCreate();
    }

    # start template output
    $Output .= $LayoutObject->Output(
        TemplateFile => 'AgentITSMChangeAddFromTemplate',
        Data         => {
            %Param,
            %GetParam,
            %ValidationError,
            FormID                      => $Self->{FormID},
            TemplateSelectionString     => $TemplateSelectionString,
            MoveTimeTypeSelectionString => $MoveTimeTypeSelectionString,
            MoveTimeSelectionString     => $MoveTimeSelectionString,
        },
    );

    # add footer
    $Output .= $LayoutObject->Footer();

    return $Output;
}

sub _TimeStamp2Epoch {
    my ( $Self, %Param, ) = @_;

    my $TimeStamp      = $Param{TimeStamp};
    my $DateTimeObject = $Kernel::OM->Create(
        'Kernel::System::DateTime',
        ObjectParams => {
            String => $TimeStamp,
        },
    );

    return if !$DateTimeObject;

    return $DateTimeObject->ToEpoch();
}

1;
