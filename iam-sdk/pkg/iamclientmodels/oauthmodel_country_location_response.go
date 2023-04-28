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

// OauthmodelCountryLocationResponse Oauthmodel country location response
//
// swagger:model Oauthmodel country location response.
type OauthmodelCountryLocationResponse struct {

	// city
	// Required: true
	City *string `json:"city"`

	// countrycode
	// Required: true
	CountryCode *string `json:"countryCode"`

	// countryname
	// Required: true
	CountryName *string `json:"countryName"`

	// state
	// Required: true
	State *string `json:"state"`
}

// Validate validates this Oauthmodel country location response
func (m *OauthmodelCountryLocationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCity(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCountryCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCountryName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateState(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelCountryLocationResponse) validateCity(formats strfmt.Registry) error {

	if err := validate.Required("city", "body", m.City); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelCountryLocationResponse) validateCountryCode(formats strfmt.Registry) error {

	if err := validate.Required("countryCode", "body", m.CountryCode); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelCountryLocationResponse) validateCountryName(formats strfmt.Registry) error {

	if err := validate.Required("countryName", "body", m.CountryName); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelCountryLocationResponse) validateState(formats strfmt.Registry) error {

	if err := validate.Required("state", "body", m.State); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelCountryLocationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelCountryLocationResponse) UnmarshalBinary(b []byte) error {
	var res OauthmodelCountryLocationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
