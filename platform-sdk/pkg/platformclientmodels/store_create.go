// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// StoreCreate A DTO object for creating store API call.
//
// swagger:model StoreCreate
type StoreCreate struct {

	// Default language, BCP 47 language tag, default is en
	DefaultLanguage string `json:"defaultLanguage,omitempty"`

	// Default region, should be ISO3166-1 alpha-2 two letter, default is US
	DefaultRegion string `json:"defaultRegion,omitempty"`

	// Description
	Description string `json:"description,omitempty"`

	// Languages, BCP 47 language tag
	SupportedLanguages []string `json:"supportedLanguages"`

	// Store supported regions, should be ISO3166-1 alpha-2 two letter
	SupportedRegions []string `json:"supportedRegions"`

	// Title, it should starts and ends with alphabets uppercase/lowercase or numeric, allowed separators ',.- and white-space, max length is 127
	// Required: true
	Title *string `json:"title"`
}

// Validate validates this store create
func (m *StoreCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *StoreCreate) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *StoreCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StoreCreate) UnmarshalBinary(b []byte) error {
	var res StoreCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
