// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserRolesV4Response Model user roles V4 response
//
// swagger:model Model user roles V4 response.
type ModelUserRolesV4Response struct {

	// assignednamespaces
	// Required: true
	AssignedNamespaces []string `json:"assignedNamespaces"`

	// roleid
	// Required: true
	RoleID *string `json:"roleId"`

	// rolename
	// Required: true
	RoleName *string `json:"roleName"`
}

// Validate validates this Model user roles V4 response
func (m *ModelUserRolesV4Response) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAssignedNamespaces(formats); err != nil {
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

func (m *ModelUserRolesV4Response) validateAssignedNamespaces(formats strfmt.Registry) error {

	if err := validate.Required("assignedNamespaces", "body", m.AssignedNamespaces); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserRolesV4Response) validateRoleID(formats strfmt.Registry) error {

	if err := validate.Required("roleId", "body", m.RoleID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserRolesV4Response) validateRoleName(formats strfmt.Registry) error {

	if err := validate.Required("roleName", "body", m.RoleName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserRolesV4Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserRolesV4Response) UnmarshalBinary(b []byte) error {
	var res ModelUserRolesV4Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
