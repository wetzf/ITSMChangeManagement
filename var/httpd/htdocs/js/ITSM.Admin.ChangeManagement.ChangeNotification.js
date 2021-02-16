// --
// OTOBO is a web-based ticketing system for service organisations.
// --
// Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
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
ITSM.Admin = ITSM.Admin || {};
ITSM.Admin.ChangeManagement = ITSM.Admin.ChangeManagement || {};


/**
 * @namespace ITSM.Admin.ChangeManagement.ChangeNotification
 * @memberof ITSM.Admin.ChangeManagement
 * @author Rother OSS GmbH
 * @description
 *      This namespace contains the special module functions for the Change Notification
 */
ITSM.Admin.ChangeManagement.ChangeNotification = (function (TargetNS) {

    /**
     * @name Init
     * @memberof ITSM.Admin.ChangeManagement.ChangeNotification
     * @function
     * @description
            This function initializes the special module functions.
     */
    TargetNS.Init = function () {

        if (Core.Config.Get('OverviewResult')) {
            $('.NotificationDelete').on('click', function (Event) {

                if (window.confirm(Core.Language.Translate('Do you really want to delete this notification?'))) {
                    window.location = $(this).attr('href');
                }

                // don't interfere with MasterAction
                Event.stopPropagation();
                Event.preventDefault();
                return false;
            });
        }

        if (Core.Config.Get('OverviewUpdate')) {
            if (ITSM.Agent && ITSM.Agent.ChangeManagement && ITSM.Agent.ChangeManagement.NotificationEvent) {
                ITSM.Agent.ChangeManagement.NotificationEvent.Init({
                    Localization: {
                        DeleteNotificationLanguageMsg: Core.Language.Translate('Do you really want to delete this notification language?')
                    }
                });
            }
        }
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;
}(ITSM.Admin.ChangeManagement.ChangeNotification || {}));
