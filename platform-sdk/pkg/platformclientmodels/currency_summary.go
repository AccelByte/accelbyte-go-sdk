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

// CurrencySummary Currency summary
//
// swagger:model Currency summary.
type CurrencySummary struct {

	// currency code, accept alphabet uppercase and number, must start with alphabet uppercase
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// currency symbol, max length is 8
	// Required: true
	CurrencySymbol *string `json:"currencySymbol"`

	// currency type
	// Enum: ['REAL', 'VIRTUAL']
	// Required: true
	CurrencyType *string `json:"currencyType"`

	// decimals
	// Required: true
	// Format: int32
	Decimals *int32 `json:"decimals"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`
}

// Validate validates this Currency summary
func (m *CurrencySummary) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencySymbol(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencyType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDecimals(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CurrencySummary) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *CurrencySummary) validateCurrencySymbol(formats strfmt.Registry) error {

	if err := validate.Required("currencySymbol", "body", m.CurrencySymbol); err != nil {
		return err
	}

	return nil
}

var currencySummaryTypeCurrencyTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["REAL", "VIRTUAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		currencySummaryTypeCurrencyTypePropEnum = append(currencySummaryTypeCurrencyTypePropEnum, v)
	}
}

const (

	// CurrencySummaryCurrencyTypeREAL captures enum value "REAL"
	CurrencySummaryCurrencyTypeREAL string = "REAL"

	// CurrencySummaryCurrencyTypeVIRTUAL captures enum value "VIRTUAL"
	CurrencySummaryCurrencyTypeVIRTUAL string = "VIRTUAL"
)

// prop value enum
func (m *CurrencySummary) validateCurrencyTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, currencySummaryTypeCurrencyTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CurrencySummary) validateCurrencyType(formats strfmt.Registry) error {

	if err := validate.Required("currencyType", "body", m.CurrencyType); err != nil {
		return err
	}

	// value enum
	if err := m.validateCurrencyTypeEnum("currencyType", "body", *m.CurrencyType); err != nil {
		return err
	}

	return nil
}

func (m *CurrencySummary) validateDecimals(formats strfmt.Registry) error {

	if err := validate.Required("decimals", "body", m.Decimals); err != nil {
		return err
	}

	return nil
}

func (m *CurrencySummary) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CurrencySummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CurrencySummary) UnmarshalBinary(b []byte) error {
	var res CurrencySummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
