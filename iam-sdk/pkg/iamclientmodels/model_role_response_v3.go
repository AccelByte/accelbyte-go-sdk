// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelRoleResponseV3 Model role response V3
//
// swagger:model Model role response V3.
type ModelRoleResponseV3 struct {

	// adminrole
	// Required: true
	AdminRole *bool `json:"adminRole"`

	// iswildcard
	// Required: true
	IsWildcard *bool `json:"isWildcard"`

	// permissions
	// Required: true
	Permissions []*AccountcommonPermissionV3 `json:"permissions"`

	// roleid
	// Required: true
	RoleID *string `json:"roleId"`

	// rolename
	// Required: true
	RoleName *string `json:"roleName"`
}

// Validate validates this Model role response V3
func (m *ModelRoleResponseV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAdminRole(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsWildcard(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePermissions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoleID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoleName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelRoleResponseV3) validateAdminRole(formats strfmt.Registry) error {

	if err := validate.Required("adminRole", "body", m.AdminRole); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleResponseV3) validateIsWildcard(formats strfmt.Registry) error {

	if err := validate.Required("isWildcard", "body", m.IsWildcard); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleResponseV3) validatePermissions(formats strfmt.Registry) error {

	if err := validate.Required("permissions", "body", m.Permissions); err != nil {
		return err
	}

	for i := 0; i < len(m.Permissions); i++ {
		if swag.IsZero(m.Permissions[i]) { // not required
			continue
		}

		if m.Permissions[i] != nil {
			if err := m.Permissions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("permissions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelRoleResponseV3) validateRoleID(formats strfmt.Registry) error {

	if err := validate.Required("roleId", "body", m.RoleID); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleResponseV3) validateRoleName(formats strfmt.Registry) error {

	if err := validate.Required("roleName", "body", m.RoleName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRoleResponseV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRoleResponseV3) UnmarshalBinary(b []byte) error {
	var res ModelRoleResponseV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
