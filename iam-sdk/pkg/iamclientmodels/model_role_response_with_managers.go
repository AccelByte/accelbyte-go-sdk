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

// ModelRoleResponseWithManagers Model role response with managers
//
// swagger:model Model role response with managers.
type ModelRoleResponseWithManagers struct {

	// iswildcard
	// Required: true
	IsWildcard *bool `json:"IsWildcard"`

	// managers
	// Required: true
	Managers []*AccountcommonRoleManager `json:"Managers"`

	// permissions
	// Required: true
	Permissions []*AccountcommonPermission `json:"Permissions"`

	// roleid
	// Required: true
	RoleID *string `json:"RoleId"`

	// rolename
	// Required: true
	RoleName *string `json:"RoleName"`
}

// Validate validates this Model role response with managers
func (m *ModelRoleResponseWithManagers) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsWildcard(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateManagers(formats); err != nil {
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

func (m *ModelRoleResponseWithManagers) validateIsWildcard(formats strfmt.Registry) error {

	if err := validate.Required("IsWildcard", "body", m.IsWildcard); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleResponseWithManagers) validateManagers(formats strfmt.Registry) error {

	if err := validate.Required("Managers", "body", m.Managers); err != nil {
		return err
	}

	for i := 0; i < len(m.Managers); i++ {
		if swag.IsZero(m.Managers[i]) { // not required
			continue
		}

		if m.Managers[i] != nil {
			if err := m.Managers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Managers" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelRoleResponseWithManagers) validatePermissions(formats strfmt.Registry) error {

	if err := validate.Required("Permissions", "body", m.Permissions); err != nil {
		return err
	}

	for i := 0; i < len(m.Permissions); i++ {
		if swag.IsZero(m.Permissions[i]) { // not required
			continue
		}

		if m.Permissions[i] != nil {
			if err := m.Permissions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Permissions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelRoleResponseWithManagers) validateRoleID(formats strfmt.Registry) error {

	if err := validate.Required("RoleId", "body", m.RoleID); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleResponseWithManagers) validateRoleName(formats strfmt.Registry) error {

	if err := validate.Required("RoleName", "body", m.RoleName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRoleResponseWithManagers) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRoleResponseWithManagers) UnmarshalBinary(b []byte) error {
	var res ModelRoleResponseWithManagers
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
