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

// CurrencyInfo Currency info
//
// swagger:model Currency info.
type CurrencyInfo struct {

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

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

	// Description, key is language, value is description max length is 255
	LocalizationDescriptions map[string]string `json:"localizationDescriptions,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Currency info
func (m *CurrencyInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
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
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CurrencyInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *CurrencyInfo) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *CurrencyInfo) validateCurrencySymbol(formats strfmt.Registry) error {

	if err := validate.Required("currencySymbol", "body", m.CurrencySymbol); err != nil {
		return err
	}

	return nil
}

var currencyInfoTypeCurrencyTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["REAL", "VIRTUAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		currencyInfoTypeCurrencyTypePropEnum = append(currencyInfoTypeCurrencyTypePropEnum, v)
	}
}

const (

	// CurrencyInfoCurrencyTypeREAL captures enum value "REAL"
	CurrencyInfoCurrencyTypeREAL string = "REAL"

	// CurrencyInfoCurrencyTypeVIRTUAL captures enum value "VIRTUAL"
	CurrencyInfoCurrencyTypeVIRTUAL string = "VIRTUAL"
)

// prop value enum
func (m *CurrencyInfo) validateCurrencyTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, currencyInfoTypeCurrencyTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CurrencyInfo) validateCurrencyType(formats strfmt.Registry) error {

	if err := validate.Required("currencyType", "body", m.CurrencyType); err != nil {
		return err
	}

	// value enum
	if err := m.validateCurrencyTypeEnum("currencyType", "body", *m.CurrencyType); err != nil {
		return err
	}

	return nil
}

func (m *CurrencyInfo) validateDecimals(formats strfmt.Registry) error {

	if err := validate.Required("decimals", "body", m.Decimals); err != nil {
		return err
	}

	return nil
}

func (m *CurrencyInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *CurrencyInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CurrencyInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CurrencyInfo) UnmarshalBinary(b []byte) error {
	var res CurrencyInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
