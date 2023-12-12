// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIAddMemberParams Api add member params
//
// swagger:model Api add member params.
type APIAddMemberParams struct {

	// isadmin
	// Required: true
	IsAdmin *bool `json:"isAdmin"`
}

// Validate validates this Api add member params
func (m *APIAddMemberParams) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsAdmin(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIAddMemberParams) validateIsAdmin(formats strfmt.Registry) error {

	if err := validate.Required("isAdmin", "body", m.IsAdmin); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIAddMemberParams) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIAddMemberParams) UnmarshalBinary(b []byte) error {
	var res APIAddMemberParams
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
