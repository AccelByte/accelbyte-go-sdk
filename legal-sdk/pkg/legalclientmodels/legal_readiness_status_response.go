// Code generated by go-swagger; DO NOT EDIT.

package legalclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// LegalReadinessStatusResponse legal readiness status response
//
// swagger:model LegalReadinessStatusResponse
type LegalReadinessStatusResponse struct {

	// is ready
	IsReady bool `json:"isReady"`
}

// Validate validates this legal readiness status response
func (m *LegalReadinessStatusResponse) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *LegalReadinessStatusResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *LegalReadinessStatusResponse) UnmarshalBinary(b []byte) error {
	var res LegalReadinessStatusResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
