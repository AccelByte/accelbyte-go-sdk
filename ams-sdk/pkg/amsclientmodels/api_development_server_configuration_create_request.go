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

// APIDevelopmentServerConfigurationCreateRequest Api development server configuration create request
//
// swagger:model Api development server configuration create request.
type APIDevelopmentServerConfigurationCreateRequest struct {

	// commandlinearguments
	// Required: true
	CommandLineArguments *string `json:"commandLineArguments"`

	// expiresat
	// Required: true
	// Format: date-time
	ExpiresAt strfmt.DateTime `json:"expiresAt"`

	// imageid
	// Required: true
	ImageID *string `json:"imageId"`

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this Api development server configuration create request
func (m *APIDevelopmentServerConfigurationCreateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCommandLineArguments(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpiresAt(formats); err != nil {
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

func (m *APIDevelopmentServerConfigurationCreateRequest) validateCommandLineArguments(formats strfmt.Registry) error {

	if err := validate.Required("commandLineArguments", "body", m.CommandLineArguments); err != nil {
		return err
	}

	return nil
}

func (m *APIDevelopmentServerConfigurationCreateRequest) validateExpiresAt(formats strfmt.Registry) error {

	if err := validate.Required("expiresAt", "body", strfmt.DateTime(m.ExpiresAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("expiresAt", "body", "date-time", m.ExpiresAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *APIDevelopmentServerConfigurationCreateRequest) validateImageID(formats strfmt.Registry) error {

	if err := validate.Required("imageId", "body", m.ImageID); err != nil {
		return err
	}

	return nil
}

func (m *APIDevelopmentServerConfigurationCreateRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIDevelopmentServerConfigurationCreateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIDevelopmentServerConfigurationCreateRequest) UnmarshalBinary(b []byte) error {
	var res APIDevelopmentServerConfigurationCreateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
