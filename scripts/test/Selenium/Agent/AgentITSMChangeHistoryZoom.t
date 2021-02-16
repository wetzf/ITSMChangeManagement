# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2021 Rother OSS GmbH, https://otobo.de/
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

use strict;
use warnings;
use utf8;

use vars (qw($Self));

my $Selenium = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {

        my $Helper       = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');
        my $ChangeObject = $Kernel::OM->Get('Kernel::System::ITSMChange');

        # Get change state data.
        my $ChangeStateDataRef = $Kernel::OM->Get('Kernel::System::GeneralCatalog')->ItemGet(
            Class => 'ITSM::ChangeManagement::Change::State',
            Name  => 'pending pir',
        );

        # Create test change, we need a long description and justification to show the history details.
        my $ChangeTitleRandom = 'ITSMChange ' . $Helper->GetRandomID();
        my $ChangeID          = $ChangeObject->ChangeAdd(
            ChangeTitle => $ChangeTitleRandom,
            Description =>
                "Test Description with a very very very very very very very very very very very very very very very very long text",
            Justification =>
                "Test Justification with a very very very very very very very very very very very very very very very very long text",
            ChangeStateID => $ChangeStateDataRef->{ItemID},
            UserID        => 1,
        );
        $Self->True(
            $ChangeID,
            "Change in Pending PIR state is created",
        );

        # Create and log in test user.
        my $TestUserLogin = $Helper->TestUserCreate(
            Groups => [ 'admin', 'itsm-change', 'itsm-change-builder', 'itsm-change-manager' ]
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        my $ScriptAlias = $Kernel::OM->Get('Kernel::Config')->Get('ScriptAlias');

        # Navigate to AgentITSMChangeZoom of created test change.
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AgentITSMChangeZoom;ChangeID=$ChangeID");

        # Click on 'Edit' and switch screens.
        $Selenium->find_element("//a[contains(\@href, \'Action=AgentITSMChangeHistory;ChangeID=$ChangeID' )]")->click();

        $Selenium->WaitFor( WindowCount => 2 );
        my $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        # Wait until page has loaded, if necessary.
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $(".CancelClosePopup").length;' );
        sleep 2;

        # Click on history show details to check AgentITSMChangeHistoryZoom screen.
        $Selenium->find_element("//a[contains(\@href, \'Action=AgentITSMChangeHistoryZoom;HistoryEntryID=' )]")->VerifiedClick();

        # Check AgentITSMChangeHistoryZoom values.
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $(".CancelClosePopup").length;' );
        $Self->Is(
            $Selenium->execute_script("return \$('.Content h2').text().trim();"),
            'Detailed history information of ChangeUpdate',
            "Detailed history information of ChangeUpdate is found",
        );

        $Self->True(
            index( $Selenium->get_page_source(), $ChangeTitleRandom ) > -1,
            "$ChangeTitleRandom is found",
        );

        # Delete test created change.
        my $Success = $ChangeObject->ChangeDelete(
            ChangeID => $ChangeID,
            UserID   => 1,
        );
        $Self->True(
            $Success,
            "$ChangeTitleRandom is deleted",
        );

        # Make sure cache is correct.
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp( Type => 'ITSMChange*' );
    }
);

1;
