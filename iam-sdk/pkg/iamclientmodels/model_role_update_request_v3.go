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

// ModelRoleUpdateRequestV3 Model role update request V3
//
// swagger:model Model role update request V3.
type ModelRoleUpdateRequestV3 struct {

	// deletable
	Deletable bool `json:"deletable"`

	// iswildcard
	// Required: true
	IsWildcard *bool `json:"isWildcard"`

	// rolename
	// Required: true
	RoleName *string `json:"roleName"`
}

// Validate validates this Model role update request V3
func (m *ModelRoleUpdateRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

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

func (m *ModelRoleUpdateRequestV3) validateIsWildcard(formats strfmt.Registry) error {

	if err := validate.Required("isWildcard", "body", m.IsWildcard); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleUpdateRequestV3) validateRoleName(formats strfmt.Registry) error {

	if err := validate.Required("roleName", "body", m.RoleName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRoleUpdateRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRoleUpdateRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelRoleUpdateRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
