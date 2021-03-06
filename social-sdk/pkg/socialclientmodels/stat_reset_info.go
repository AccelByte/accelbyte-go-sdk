// Code generated by go-swagger; DO NOT EDIT.

package socialclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// StatResetInfo stat reset info
//
// swagger:model StatResetInfo
type StatResetInfo struct {

	// Additional data to be published in event payload
	AdditionalData map[string]interface{} `json:"additionalData,omitempty"`
}

// Validate validates this stat reset info
func (m *StatResetInfo) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *StatResetInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StatResetInfo) UnmarshalBinary(b []byte) error {
	var res StatResetInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
