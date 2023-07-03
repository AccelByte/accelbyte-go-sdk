// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPSNAppServerCredentials Models PSN app server credentials
//
// swagger:model Models PSN app server credentials.
type ModelsPSNAppServerCredentials struct {

	// clientid
	// Required: true
	ClientID *string `json:"clientId"`

	// clientsecret
	// Required: true
	ClientSecret *string `json:"clientSecret"`

	// scope
	// Required: true
	Scope *string `json:"scope"`
}

// Validate validates this Models PSN app server credentials
func (m *ModelsPSNAppServerCredentials) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientSecret(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScope(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPSNAppServerCredentials) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("clientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPSNAppServerCredentials) validateClientSecret(formats strfmt.Registry) error {

	if err := validate.Required("clientSecret", "body", m.ClientSecret); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPSNAppServerCredentials) validateScope(formats strfmt.Registry) error {

	if err := validate.Required("scope", "body", m.Scope); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPSNAppServerCredentials) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPSNAppServerCredentials) UnmarshalBinary(b []byte) error {
	var res ModelsPSNAppServerCredentials
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
