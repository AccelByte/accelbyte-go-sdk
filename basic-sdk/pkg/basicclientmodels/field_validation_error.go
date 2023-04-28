// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// FieldValidationError Field validation error
//
// swagger:model Field validation error.
type FieldValidationError struct {

	// errorcode
	ErrorCode string `json:"errorCode,omitempty"`

	// errorfield
	ErrorField string `json:"errorField,omitempty"`

	// errormessage
	ErrorMessage string `json:"errorMessage,omitempty"`

	// errorvalue
	ErrorValue string `json:"errorValue,omitempty"`

	// messagevariables
	MessageVariables map[string]string `json:"messageVariables,omitempty"`
}

// Validate validates this Field validation error
func (m *FieldValidationError) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FieldValidationError) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FieldValidationError) UnmarshalBinary(b []byte) error {
	var res FieldValidationError
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
