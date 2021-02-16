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
ITSM.Agent = ITSM.Agent || {};
ITSM.Agent.ChangeManagement = ITSM.Agent.ChangeManagement || {};

/**
 * @namespace ITSM.Agent.ChangeManagement.CABMemberSearch
 * @memberof ITSM.Agent
 * @author Rother OSS GmbH
 * @description
 *      This namespace contains the special module functions for the CAB search.
 */
ITSM.Agent.ChangeManagement.CABMemberSearch = (function (TargetNS) {

    /**
     * @name Init
     * @memberof ITSM.Agent.ChangeManagement.CABMemberSearch
     * @function
     * @param {jQueryObject} $Element - The jQuery object of the input field with autocomplete.
     * @description
     *      This function initializes the special module functions.
     */
    TargetNS.Init = function () {

        $('.CABMemberSearch').each(function(idx, Element){

            var $Element = $(Element);

            Core.UI.Autocomplete.Init(
                $Element,
                function (Request, Response) {
                    var URL = Core.Config.Get('Baselink'), Data = {
                        Action: 'AgentITSMCABMemberSearch',
                        Term: Request.term + '*',
                        Groups: Core.Config.Get('CABAutocomplete.Groups') || '',
                        MaxResults: Core.UI.Autocomplete.GetConfig('MaxResultsDisplayed')
                    };

                    $Element.data('AutoCompleteXHR', Core.AJAX.FunctionCall(URL, Data, function (Result) {
                        var ValueData = [];
                        $Element.removeData('AutoCompleteXHR');
                        $.each(Result, function () {
                            ValueData.push({
                                label: this.UserValue + " (" + this.UserKey + ")",
                                value: this.UserValue,
                                type: this.UserType
                            });
                        });
                        Response(ValueData);
                    }));
                },
                function (Event, UI) {

                    var UserKey = UI.item.label.replace(/.*\((.*)\)$/, '$1');
                    $Element.val(UI.item.value);

                    // set hidden field UserSelected
                    $('#' + Core.App.EscapeSelector($Element.attr('id')) + 'Selected').val(UserKey);
                    $('#' + Core.App.EscapeSelector($Element.attr('id')) + 'Type').val(UI.item.type);

                    return false;
                },
                'CustomerSearch'
            );

            // On unload remove old selected data. If the page is reloaded (with F5) this data stays in the field and invokes an ajax request otherwise
            $(window).on('beforeunload.CABMemberSearch', function () {
                // escape possible colons (:) in element id because jQuery can not handle it in id attribute selectors
                $('#' + Core.App.EscapeSelector($Element.attr('id')) + 'Selected').val('');
                return;
            });

        });
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;
}(ITSM.Agent.ChangeManagement.CABMemberSearch || {}));
