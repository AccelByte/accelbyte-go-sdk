// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelSaveSecretConfigurationV2Request Apimodel save secret configuration V2 request
//
// swagger:model Apimodel save secret configuration V2 request.
type ApimodelSaveSecretConfigurationV2Request struct {

	// configname
	// Required: true
	ConfigName *string `json:"configName"`

	// description
	Description string `json:"description,omitempty"`

	// source
	// Required: true
	Source *string `json:"source"`

	// value
	// Required: true
	Value *string `json:"value"`
}

// Validate validates this Apimodel save secret configuration V2 request
func (m *ApimodelSaveSecretConfigurationV2Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConfigName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSource(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelSaveSecretConfigurationV2Request) validateConfigName(formats strfmt.Registry) error {

	if err := validate.Required("configName", "body", m.ConfigName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSaveSecretConfigurationV2Request) validateSource(formats strfmt.Registry) error {

	if err := validate.Required("source", "body", m.Source); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSaveSecretConfigurationV2Request) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelSaveSecretConfigurationV2Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelSaveSecretConfigurationV2Request) UnmarshalBinary(b []byte) error {
	var res ApimodelSaveSecretConfigurationV2Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
