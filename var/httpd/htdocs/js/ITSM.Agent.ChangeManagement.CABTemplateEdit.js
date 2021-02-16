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
 * @namespace ITSM.Agent.ChangeManagement.Add
 * @memberof ITSM.Agent.ChangeManagement
 * @author Rother OSS GmbH
 * @description
 *      This namespace contains the special module functions for the change-management add screen.
 */
ITSM.Agent.ChangeManagement.CABTemplateEdit = (function (TargetNS) {

    /**
     * @private
     * @name DeleteCABMember
     * @namespace ITSM.Agent
     * @function
     * @returns {false} Returns false to cancel the default behaviour of anchor elements.
     * @description
     *      This function sets the cab member to delete when the button is clicked.
     */
    function DeleteCABMember() {
        var $This = $(this);
        var $Form = $This.closest('form');

        Core.Form.Validate.DisableValidation($Form);

        $('input[name=DeleteCABMember]', $Form).val($This.attr('id'));

        $Form.submit();
        return false;
    }


    /**
     * @name Init
     * @namespace ITSM.Agent.ChangeManagement.CABTemplateEdit
     * @function
     * @description
     *      This function initializes some behaviours for the add screen.
     */
    TargetNS.Init = function () {

        // Bind elements with class '.DeleteCABMember' to delete the cab member.
        $('.DeleteCABMember').off('click.CAB.TemplateEdit').on('click.CAB.TemplateEdit', DeleteCABMember);

        $('#BtnAddCABMember').off('click.AgentITSMTemplateEditCABAddCABMember').on('click.AgentITSMTemplateEditCABAddCABMember', function () {

            var $Form = $('#AddCABMember').closest('form');
            Core.Form.Validate.DisableValidation($Form);

            $('input[name=AddCABMember]', $Form).val('Add');

        });
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;

}(ITSM.Agent.ChangeManagement.CABTemplateEdit || {}));
