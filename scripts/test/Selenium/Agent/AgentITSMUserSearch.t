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

        my $Helper = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');

        # Get change state data.
        my $ChangeDataRef = $Kernel::OM->Get('Kernel::System::GeneralCatalog')->ItemGet(
            Class => 'ITSM::ChangeManagement::Change::State',
            Name  => 'requested',
        );

        my $ChangeObject = $Kernel::OM->Get('Kernel::System::ITSMChange');

        # Create test change.
        my $ChangeTitleRandom = 'ITSMChange Requested ' . $Helper->GetRandomID();
        my $ChangeID          = $ChangeObject->ChangeAdd(
            ChangeTitle   => $ChangeTitleRandom,
            Description   => 'Selenium Test Description',
            Justification => 'Selenium Test Justification',
            ChangeStateID => $ChangeDataRef->{ItemID},
            UserID        => 1,
        );
        $Self->True(
            $ChangeID,
            "$ChangeTitleRandom is created",
        );

        # Create and log in builder user.
        my $Language      = 'en';
        my $TestUserLogin = $Helper->TestUserCreate(
            Groups   => [ 'admin', 'itsm-change', 'itsm-change-manager' ],
            Language => $Language,
        ) || die "Did not get test builder user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        my $LanguageObject = Kernel::Language->new(
            UserLanguage => $Language,
        );

        # Get test user ID.
        my $TestUserID = $Kernel::OM->Get('Kernel::System::User')->UserLookup(
            UserLogin => $TestUserLogin,
        );

        my $ScriptAlias = $Kernel::OM->Get('Kernel::Config')->Get('ScriptAlias');

        # Navigate to AgentITSMChangeZoom screen.
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AgentITSMChangeZoom;ChangeID=$ChangeID");

        # Click on 'Involved Persons' and switch window.
        $Selenium->find_element("//a[contains(\@href, \'Action=AgentITSMChangeInvolvedPersons;ChangeID=$ChangeID')]")->click();

        $Selenium->WaitFor( WindowCount => 2 );
        my $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        # Wait until page has loaded, if necessary.
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $("#ChangeManager").length;' );
        sleep 2;

        # Input change manager.
        $Selenium->find_element( "#ChangeManager", 'css' )->send_keys($TestUserLogin);
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $("li.ui-menu-item:visible").length;' );
        $Selenium->execute_script("\$('li.ui-menu-item:contains($TestUserLogin)').click();");

        # Submit and switch window.
        $Selenium->find_element("//button[\@type='submit'][\@value='Submit']")->click();
        $Selenium->WaitFor( WindowCount => 1 );
        $Selenium->switch_to_window( $Handles->[0] );

        $Selenium->VerifiedRefresh();

        # Click on 'History' and switch window
        $Selenium->find_element("//a[contains(\@href, \'Action=AgentITSMChangeHistory;ChangeID=$ChangeID')]")->click();
        sleep 2;

        $Selenium->WaitFor( WindowCount => 2 );
        $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        # Wait until page has loaded, if necessary
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $(".CancelClosePopup").length;' );

        # Check manager change.
        my $ExpectedManagerMessage = $LanguageObject->Translate('ChangeManager') . ": (new=$TestUserLogin";

        $Self->True(
            index( $Selenium->get_page_source(), $ExpectedManagerMessage ) > -1,
            "$ExpectedManagerMessage is found",
        );

        # Delete created test change.
        my $Success = $ChangeObject->ChangeDelete(
            ChangeID => $ChangeID,
            UserID   => 1,
        );
        $Self->True(
            $Success,
            "$ChangeTitleRandom is deleted",
        );

        # Make sure the cache is correct.
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp( Type => 'ITSMChange*' );
    }
);

1;
