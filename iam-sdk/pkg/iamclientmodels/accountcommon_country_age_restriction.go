// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AccountcommonCountryAgeRestriction Accountcommon country age restriction
//
// swagger:model Accountcommon country age restriction.
type AccountcommonCountryAgeRestriction struct {

	// agerestriction
	// Required: true
	// Format: int32
	AgeRestriction *int32 `json:"AgeRestriction"`

	// countrycode
	// Required: true
	CountryCode *string `json:"CountryCode"`

	// countryname
	// Required: true
	CountryName *string `json:"CountryName"`

	// enable
	// Required: true
	Enable *bool `json:"Enable"`
}

// Validate validates this Accountcommon country age restriction
func (m *AccountcommonCountryAgeRestriction) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAgeRestriction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCountryCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCountryName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnable(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonCountryAgeRestriction) validateAgeRestriction(formats strfmt.Registry) error {

	if err := validate.Required("AgeRestriction", "body", m.AgeRestriction); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonCountryAgeRestriction) validateCountryCode(formats strfmt.Registry) error {

	if err := validate.Required("CountryCode", "body", m.CountryCode); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonCountryAgeRestriction) validateCountryName(formats strfmt.Registry) error {

	if err := validate.Required("CountryName", "body", m.CountryName); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonCountryAgeRestriction) validateEnable(formats strfmt.Registry) error {

	if err := validate.Required("Enable", "body", m.Enable); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonCountryAgeRestriction) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonCountryAgeRestriction) UnmarshalBinary(b []byte) error {
	var res AccountcommonCountryAgeRestriction
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
