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

// ModelLoginAllowlistResponse Model login allowlist response
//
// swagger:model Model login allowlist response.
type ModelLoginAllowlistResponse struct {

	// active
	// Required: true
	Active *bool `json:"active"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// roleids
	// Required: true
	RoleIds []string `json:"roleIds"`
}

// Validate validates this Model login allowlist response
func (m *ModelLoginAllowlistResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoleIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelLoginAllowlistResponse) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *ModelLoginAllowlistResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelLoginAllowlistResponse) validateRoleIds(formats strfmt.Registry) error {

	if err := validate.Required("roleIds", "body", m.RoleIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelLoginAllowlistResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelLoginAllowlistResponse) UnmarshalBinary(b []byte) error {
	var res ModelLoginAllowlistResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
