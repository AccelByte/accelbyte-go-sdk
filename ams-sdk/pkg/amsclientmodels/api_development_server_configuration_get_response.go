// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIDevelopmentServerConfigurationGetResponse Api development server configuration get response
//
// swagger:model Api development server configuration get response.
type APIDevelopmentServerConfigurationGetResponse struct {

	// commandlinearguments
	// Required: true
	CommandLineArguments *string `json:"commandLineArguments"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// expiresat
	// Format: date-time
	ExpiresAt *strfmt.DateTime `json:"expiresAt,omitempty"`

	// imageid
	// Required: true
	ImageID *string `json:"imageId"`

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this Api development server configuration get response
func (m *APIDevelopmentServerConfigurationGetResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCommandLineArguments(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIDevelopmentServerConfigurationGetResponse) validateCommandLineArguments(formats strfmt.Registry) error {

	if err := validate.Required("commandLineArguments", "body", m.CommandLineArguments); err != nil {
		return err
	}

	return nil
}

func (m *APIDevelopmentServerConfigurationGetResponse) validateImageID(formats strfmt.Registry) error {

	if err := validate.Required("imageId", "body", m.ImageID); err != nil {
		return err
	}

	return nil
}

func (m *APIDevelopmentServerConfigurationGetResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIDevelopmentServerConfigurationGetResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIDevelopmentServerConfigurationGetResponse) UnmarshalBinary(b []byte) error {
	var res APIDevelopmentServerConfigurationGetResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
