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

// ModelLoginAllowlistRequest Model login allowlist request
//
// swagger:model Model login allowlist request.
type ModelLoginAllowlistRequest struct {

	// active
	// Required: true
	Active *bool `json:"active"`

	// roleids
	// Required: true
	RoleIds []string `json:"roleIds"`
}

// Validate validates this Model login allowlist request
func (m *ModelLoginAllowlistRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
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

func (m *ModelLoginAllowlistRequest) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *ModelLoginAllowlistRequest) validateRoleIds(formats strfmt.Registry) error {

	if err := validate.Required("roleIds", "body", m.RoleIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelLoginAllowlistRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelLoginAllowlistRequest) UnmarshalBinary(b []byte) error {
	var res ModelLoginAllowlistRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
