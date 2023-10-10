// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ImportErrorDetails Import error details
//
// swagger:model Import error details.
type ImportErrorDetails struct {

	// error code
	// Format: int32
	ErrorCode int32 `json:"errorCode,omitempty"`

	// error field, exists if constraint violated exception
	ErrorField string `json:"errorField,omitempty"`

	// error message
	ErrorMessage string `json:"errorMessage,omitempty"`

	// error value, exists if constraint violated exception
	ErrorValue string `json:"errorValue,omitempty"`

	// message variables
	MessageVariables map[string]string `json:"messageVariables,omitempty"`
}

// Validate validates this Import error details
func (m *ImportErrorDetails) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ImportErrorDetails) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ImportErrorDetails) UnmarshalBinary(b []byte) error {
	var res ImportErrorDetails
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
