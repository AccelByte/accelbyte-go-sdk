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

// ModelAddUserRoleV4Request Model add user role V4 request
//
// swagger:model Model add user role V4 request.
type ModelAddUserRoleV4Request struct {

	// assignednamespaces
	// Required: true
	AssignedNamespaces []string `json:"assignedNamespaces"`

	// roleid
	// Required: true
	RoleID *string `json:"roleId"`
}

// Validate validates this Model add user role V4 request
func (m *ModelAddUserRoleV4Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAssignedNamespaces(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoleID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelAddUserRoleV4Request) validateAssignedNamespaces(formats strfmt.Registry) error {

	if err := validate.Required("assignedNamespaces", "body", m.AssignedNamespaces); err != nil {
		return err
	}

	return nil
}

func (m *ModelAddUserRoleV4Request) validateRoleID(formats strfmt.Registry) error {

	if err := validate.Required("roleId", "body", m.RoleID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelAddUserRoleV4Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelAddUserRoleV4Request) UnmarshalBinary(b []byte) error {
	var res ModelAddUserRoleV4Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
