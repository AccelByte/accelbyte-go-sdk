// Code generated by go-swagger; DO NOT EDIT.

package iamclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiErrorResponse restapi error response
//
// swagger:model restapi.ErrorResponse
type RestapiErrorResponse struct {

	// code
	Code int32 `json:"Code,omitempty"`

	// message
	// Required: true
	Message *string `json:"Message"`
}

// Validate validates this restapi error response
func (m *RestapiErrorResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMessage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiErrorResponse) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("Message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiErrorResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiErrorResponse) UnmarshalBinary(b []byte) error {
	var res RestapiErrorResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
