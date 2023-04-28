// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUpdateMemberRolePermissionsRequestV1 Models update member role permissions request V1
//
// swagger:model Models update member role permissions request V1.
type ModelsUpdateMemberRolePermissionsRequestV1 struct {

	// memberrolepermissions
	// Required: true
	MemberRolePermissions []*ModelsRolePermission `json:"memberRolePermissions"`
}

// Validate validates this Models update member role permissions request V1
func (m *ModelsUpdateMemberRolePermissionsRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMemberRolePermissions(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateMemberRolePermissionsRequestV1) validateMemberRolePermissions(formats strfmt.Registry) error {

	if err := validate.Required("memberRolePermissions", "body", m.MemberRolePermissions); err != nil {
		return err
	}

	for i := 0; i < len(m.MemberRolePermissions); i++ {
		if swag.IsZero(m.MemberRolePermissions[i]) { // not required
			continue
		}

		if m.MemberRolePermissions[i] != nil {
			if err := m.MemberRolePermissions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("memberRolePermissions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateMemberRolePermissionsRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateMemberRolePermissionsRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateMemberRolePermissionsRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
