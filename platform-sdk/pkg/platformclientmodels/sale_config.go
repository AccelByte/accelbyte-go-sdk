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

// SaleConfig Sale config
//
// swagger:model Sale config.
type SaleConfig struct {

	// currency code, only allow to use current namespace virtual currency
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// price value
	// Required: true
	// Format: int32
	Price *int32 `json:"price"`
}

// Validate validates this Sale config
func (m *SaleConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrice(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SaleConfig) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *SaleConfig) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SaleConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SaleConfig) UnmarshalBinary(b []byte) error {
	var res SaleConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
