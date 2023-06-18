// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// CurrencyCreate Currency create
//
// swagger:model Currency create.
type CurrencyCreate struct {

	// currency code, accept alphabet uppercase and number, must start with alphabet uppercase
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// currency symbol, max length is 8
	CurrencySymbol string `json:"currencySymbol,omitempty"`

	// currencytype
	// Enum: ['REAL', 'VIRTUAL']
	CurrencyType string `json:"currencyType,omitempty"`

	// decimals, commonly set 2 if real currency or 0 if virtual currency
	// Format: int32
	Decimals int32 `json:"decimals,omitempty"`

	// Description, key is language, value is description max length is 255
	LocalizationDescriptions map[string]string `json:"localizationDescriptions,omitempty"`
}

// Validate validates this Currency create
func (m *CurrencyCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CurrencyCreate) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

var currencyCreateTypeCurrencyTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["REAL", "VIRTUAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		currencyCreateTypeCurrencyTypePropEnum = append(currencyCreateTypeCurrencyTypePropEnum, v)
	}
}

const (

	// CurrencyCreateCurrencyTypeREAL captures enum value "REAL"
	CurrencyCreateCurrencyTypeREAL string = "REAL"

	// CurrencyCreateCurrencyTypeVIRTUAL captures enum value "VIRTUAL"
	CurrencyCreateCurrencyTypeVIRTUAL string = "VIRTUAL"
)

// prop value enum
func (m *CurrencyCreate) validateCurrencyTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, currencyCreateTypeCurrencyTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CurrencyCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CurrencyCreate) UnmarshalBinary(b []byte) error {
	var res CurrencyCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
