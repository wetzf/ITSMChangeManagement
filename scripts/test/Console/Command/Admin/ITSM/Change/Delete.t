# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2020 Rother OSS GmbH, https://otobo.de/
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

## no critic (Modules::RequireExplicitPackage)
use strict;
use warnings;
use utf8;

use vars (qw($Self));

my $CommandObject = $Kernel::OM->Get('Kernel::System::Console::Command::Admin::ITSM::Change::Delete');

# check command without option
my $ExitCode = $CommandObject->Execute();

$Self->Is(
    $ExitCode,
    1,
    "Admin::ITSM::Change::Check - No options",
);

#check command with option --all and argument --accept n ( cancel command )
$ExitCode = $CommandObject->Execute( '--all', 'n' );

$Self->Is(
    $ExitCode,
    0,
    "Option '--all' n",
);

# get change object
my $ChangeObject = $Kernel::OM->Get('Kernel::System::ITSMChange');
my @ChangeNumbers;

# add test changes
for ( 1 .. 3 ) {

    my $ChangeID = $ChangeObject->ChangeAdd(
        UserID => 1,
    );
    my $Change = $ChangeObject->ChangeGet(
        ChangeID => $ChangeID,
        UserID   => 1,
    );

    $Self->True(
        $ChangeID,
        "Test change is created - $Change->{ChangeNumber}",
    );

    push @ChangeNumbers, $Change->{ChangeNumber};
}

# check command with option --change-number without specified change number
$ExitCode = $CommandObject->Execute('--change-number');

$Self->Is(
    $ExitCode,
    1,
    "Option '--change-number' without specified change number.",
);

# check command with option --change-number with specified change numbers
$ExitCode = $CommandObject->Execute(
    '--change-number', $ChangeNumbers[0], '--change-number', $ChangeNumbers[1],
    '--change-number', $ChangeNumbers[2],
);

$Self->Is(
    $ExitCode,
    0,
    "Option '--change-number' with specified change numbers.",
);

# try to execute the command once more with the same parameters
# the changes have alredy been deleted, and this ones do not exist anymore
$ExitCode = $CommandObject->Execute(
    '--change-number', $ChangeNumbers[0], '--change-number', $ChangeNumbers[1],
    '--change-number', $ChangeNumbers[2],
);

$Self->Is(
    $ExitCode,
    0,
    "Option '--change-number' with specified change numbers, which do not exists.",
);

1;
