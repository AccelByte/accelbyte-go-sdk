// Code generated by go-swagger; DO NOT EDIT.

package basicclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// FieldValidationError field validation error
//
// swagger:model FieldValidationError
type FieldValidationError struct {

	// error code
	ErrorCode string `json:"errorCode,omitempty"`

	// error field
	ErrorField string `json:"errorField,omitempty"`

	// error message
	ErrorMessage string `json:"errorMessage,omitempty"`

	// error value
	ErrorValue string `json:"errorValue,omitempty"`

	// message variables
	MessageVariables map[string]string `json:"messageVariables,omitempty"`
}

// Validate validates this field validation error
func (m *FieldValidationError) Validate(formats strfmt.Registry) error {
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
