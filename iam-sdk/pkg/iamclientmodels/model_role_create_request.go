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

// ModelRoleCreateRequest Model role create request
//
// swagger:model Model role create request.
type ModelRoleCreateRequest struct {

	// adminrole
	// Required: true
	AdminRole *bool `json:"AdminRole"`

	// managers
	// Required: true
	Managers []*AccountcommonRoleManager `json:"Managers"`

	// members
	// Required: true
	Members []*AccountcommonRoleMember `json:"Members"`

	// permissions
	// Required: true
	Permissions []*AccountcommonPermission `json:"Permissions"`

	// rolename
	// Required: true
	RoleName *string `json:"RoleName"`
}

// Validate validates this Model role create request
func (m *ModelRoleCreateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAdminRole(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateManagers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMembers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePermissions(formats); err != nil {
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

func (m *ModelRoleCreateRequest) validateAdminRole(formats strfmt.Registry) error {

	if err := validate.Required("AdminRole", "body", m.AdminRole); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleCreateRequest) validateManagers(formats strfmt.Registry) error {

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

func (m *ModelRoleCreateRequest) validateMembers(formats strfmt.Registry) error {

	if err := validate.Required("Members", "body", m.Members); err != nil {
		return err
	}

	for i := 0; i < len(m.Members); i++ {
		if swag.IsZero(m.Members[i]) { // not required
			continue
		}

		if m.Members[i] != nil {
			if err := m.Members[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Members" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelRoleCreateRequest) validatePermissions(formats strfmt.Registry) error {

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

func (m *ModelRoleCreateRequest) validateRoleName(formats strfmt.Registry) error {

	if err := validate.Required("RoleName", "body", m.RoleName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRoleCreateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRoleCreateRequest) UnmarshalBinary(b []byte) error {
	var res ModelRoleCreateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
