// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// CurrencyUpdate A DTO for update currency
//
// swagger:model CurrencyUpdate
type CurrencyUpdate struct {

	// Description, key is language, value is description max length is 255
	LocalizationDescriptions map[string]string `json:"localizationDescriptions,omitempty"`
}

// Validate validates this currency update
func (m *CurrencyUpdate) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *CurrencyUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CurrencyUpdate) UnmarshalBinary(b []byte) error {
	var res CurrencyUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
