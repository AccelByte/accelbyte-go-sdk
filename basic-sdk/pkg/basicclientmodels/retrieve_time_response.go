// Code generated by go-swagger; DO NOT EDIT.

package basicclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// RetrieveTimeResponse retrieve time response
//
// swagger:model RetrieveTimeResponse
type RetrieveTimeResponse struct {

	// current time
	CurrentTime string `json:"currentTime,omitempty"`
}

// Validate validates this retrieve time response
func (m *RetrieveTimeResponse) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *RetrieveTimeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrieveTimeResponse) UnmarshalBinary(b []byte) error {
	var res RetrieveTimeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
