// --
// OTOBO is a web-based ticketing system for service organisations.
// --
// Copyright (C) 2001-2020 OTRS AG, https://otrs.com/\n";
// Copyright (C) 2019-2021 Rother OSS GmbH, https://otobo.de/
// --
// This program is free software: you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later version.
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.
// --

"use strict";

var ITSM = ITSM || {};
ITSM.Agent = ITSM.Agent || {};
ITSM.Agent.ChangeManagement = ITSM.Agent.ChangeManagement || {};


/**
 * @namespace ITSM.Agent.ChangeManagement.Overview
 * @memberof ITSM.Agent.ChangeManagement
 * @author Rother OSS GmbH
 * @description
 *      This namespace contains the special module functions for the config item overview navbar.
 */
ITSM.Agent.ChangeManagement.Overview = (function (TargetNS) {

    /**
     * @name Init
     * @namespace ITSM.Agent.ChangeManagement.Overview
     * @function
     * @description
     *      This function initializes some behaviours for the serch and overview screens.
     */
    TargetNS.Init = function () {
        var ITSMChangeMgmtChangeSearch = Core.Config.Get('ITSMChangeMgmtChangeSearch');

        // Bind button to open the context settings dialog.
        $('#ShowContextSettingsDialog').on('click.ContextSettings', function (Event) {
            Core.UI.Dialog.ShowContentDialog($('#ContextSettingsDialogContainer'), Core.Language.Translate("Settings"), '20%', 'Center', true,
                [
                    {
                        Label: Core.Language.Translate("Submit"),
                        Type: 'Submit',
                        Class: 'Primary'
                    }
                ]
            );
            Event.preventDefault();
            Event.stopPropagation();
            return false;
        });

        // On row click go the change zoom.
        $('.MasterAction').on('click', function (Event) {
            var $MasterActionLink = $(this).find('.MasterActionLink');
            // only act if the link was not clicked directly
            if (Event.target !== $MasterActionLink.get(0)) {
                window.location = $MasterActionLink.attr('href');
                return false;
            }
        });

        // In search results bind the button 'Change search options' to open the search dialog.
        if (ITSMChangeMgmtChangeSearch) {
            $('#ChangeSearch').on('click.ChangeSearch', function () {
                ITSM.Agent.ChangeManagement.Search.OpenSearchDialog(
                    'AgentITSMChangeSearch',
                    Core.App.EscapeSelector(ITSMChangeMgmtChangeSearch.Profile)
                );
                return false;
            });
        }
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;

}(ITSM.Agent.ChangeManagement.Overview || {}));
