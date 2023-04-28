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

// ModelCountryV3Response Model country V3 response
//
// swagger:model Model country V3 response.
type ModelCountryV3Response struct {

	// agerestriction
	// Required: true
	// Format: int32
	AgeRestriction *int32 `json:"ageRestriction"`

	// countrycode
	// Required: true
	CountryCode *string `json:"countryCode"`

	// countryname
	// Required: true
	CountryName *string `json:"countryName"`

	// enable
	// Required: true
	Enable *bool `json:"enable"`
}

// Validate validates this Model country V3 response
func (m *ModelCountryV3Response) Validate(formats strfmt.Registry) error {
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

func (m *ModelCountryV3Response) validateAgeRestriction(formats strfmt.Registry) error {

	if err := validate.Required("ageRestriction", "body", m.AgeRestriction); err != nil {
		return err
	}

	return nil
}

func (m *ModelCountryV3Response) validateCountryCode(formats strfmt.Registry) error {

	if err := validate.Required("countryCode", "body", m.CountryCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelCountryV3Response) validateCountryName(formats strfmt.Registry) error {

	if err := validate.Required("countryName", "body", m.CountryName); err != nil {
		return err
	}

	return nil
}

func (m *ModelCountryV3Response) validateEnable(formats strfmt.Registry) error {

	if err := validate.Required("enable", "body", m.Enable); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCountryV3Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCountryV3Response) UnmarshalBinary(b []byte) error {
	var res ModelCountryV3Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
