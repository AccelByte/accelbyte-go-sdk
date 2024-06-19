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

// ModelUserInputValidationResponse Model user input validation response
//
// swagger:model Model user input validation response.
type ModelUserInputValidationResponse struct {

	// message
	Message string `json:"message,omitempty"`

	// valid
	// Required: true
	Valid *bool `json:"valid"`
}

// Validate validates this Model user input validation response
func (m *ModelUserInputValidationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateValid(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserInputValidationResponse) validateValid(formats strfmt.Registry) error {

	if err := validate.Required("valid", "body", m.Valid); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserInputValidationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserInputValidationResponse) UnmarshalBinary(b []byte) error {
	var res ModelUserInputValidationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
