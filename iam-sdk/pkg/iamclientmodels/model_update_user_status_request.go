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

// ModelUpdateUserStatusRequest Model update user status request
//
// swagger:model Model update user status request.
type ModelUpdateUserStatusRequest struct {

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// reason
	Reason string `json:"reason,omitempty"`
}

// Validate validates this Model update user status request
func (m *ModelUpdateUserStatusRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUpdateUserStatusRequest) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUpdateUserStatusRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUpdateUserStatusRequest) UnmarshalBinary(b []byte) error {
	var res ModelUpdateUserStatusRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
