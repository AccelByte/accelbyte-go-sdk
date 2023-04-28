// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// StoreUpdate Store update
//
// swagger:model Store update.
type StoreUpdate struct {

	// Default language, BCP 47 language tag
	DefaultLanguage string `json:"defaultLanguage,omitempty"`

	// Default region, should be ISO3166-1 alpha-2 two letter
	DefaultRegion string `json:"defaultRegion,omitempty"`

	// Description
	Description string `json:"description,omitempty"`

	// Languages, BCP 47 language tag
	SupportedLanguages []string `json:"supportedLanguages,omitempty"`

	// Store supported regions, should be ISO3166-1 alpha-2 two letter
	SupportedRegions []string `json:"supportedRegions,omitempty"`

	// Title, it should starts and ends with alphabets uppercase/lowercase or numeric, allowed separators ',.- and white-space, max length is 127
	// Required: true
	Title *string `json:"title"`
}

// Validate validates this Store update
func (m *StoreUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *StoreUpdate) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *StoreUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StoreUpdate) UnmarshalBinary(b []byte) error {
	var res StoreUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
