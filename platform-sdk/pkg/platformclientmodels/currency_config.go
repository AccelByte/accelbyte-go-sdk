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

// CurrencyConfig Currency config
//
// swagger:model Currency config.
type CurrencyConfig struct {

	// currency symbol
	// Required: true
	CurrencySymbol *string `json:"currencySymbol"`
}

// Validate validates this Currency config
func (m *CurrencyConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrencySymbol(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CurrencyConfig) validateCurrencySymbol(formats strfmt.Registry) error {

	if err := validate.Required("currencySymbol", "body", m.CurrencySymbol); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CurrencyConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CurrencyConfig) UnmarshalBinary(b []byte) error {
	var res CurrencyConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
