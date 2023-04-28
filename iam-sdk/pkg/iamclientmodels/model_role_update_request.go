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

// ModelRoleUpdateRequest Model role update request
//
// swagger:model Model role update request.
type ModelRoleUpdateRequest struct {

	// rolename
	// Required: true
	RoleName *string `json:"RoleName"`
}

// Validate validates this Model role update request
func (m *ModelRoleUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRoleName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelRoleUpdateRequest) validateRoleName(formats strfmt.Registry) error {

	if err := validate.Required("RoleName", "body", m.RoleName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRoleUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRoleUpdateRequest) UnmarshalBinary(b []byte) error {
	var res ModelRoleUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
