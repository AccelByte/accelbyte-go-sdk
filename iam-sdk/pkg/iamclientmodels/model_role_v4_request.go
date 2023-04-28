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

// ModelRoleV4Request Model role V4 request
//
// swagger:model Model role V4 request.
type ModelRoleV4Request struct {

	// adminrole
	// Required: true
	AdminRole *bool `json:"adminRole"`

	// deletable
	Deletable bool `json:"deletable"`

	// iswildcard
	// Required: true
	IsWildcard *bool `json:"isWildcard"`

	// rolename
	// Required: true
	RoleName *string `json:"roleName"`
}

// Validate validates this Model role V4 request
func (m *ModelRoleV4Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAdminRole(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsWildcard(formats); err != nil {
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

func (m *ModelRoleV4Request) validateAdminRole(formats strfmt.Registry) error {

	if err := validate.Required("adminRole", "body", m.AdminRole); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleV4Request) validateIsWildcard(formats strfmt.Registry) error {

	if err := validate.Required("isWildcard", "body", m.IsWildcard); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleV4Request) validateRoleName(formats strfmt.Registry) error {

	if err := validate.Required("roleName", "body", m.RoleName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRoleV4Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRoleV4Request) UnmarshalBinary(b []byte) error {
	var res ModelRoleV4Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
