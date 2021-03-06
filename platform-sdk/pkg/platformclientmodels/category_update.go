// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// CategoryUpdate A DTO object for updating category API call.
//
// swagger:model CategoryUpdate
type CategoryUpdate struct {

	// Display name, key is language, value is display name, value max length is 255
	// Required: true
	LocalizationDisplayNames map[string]string `json:"localizationDisplayNames"`
}

// Validate validates this category update
func (m *CategoryUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLocalizationDisplayNames(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CategoryUpdate) validateLocalizationDisplayNames(formats strfmt.Registry) error {

	return nil
}

// MarshalBinary interface implementation
func (m *CategoryUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CategoryUpdate) UnmarshalBinary(b []byte) error {
	var res CategoryUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
