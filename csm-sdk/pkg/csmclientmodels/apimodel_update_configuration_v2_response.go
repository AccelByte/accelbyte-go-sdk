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

// ApimodelUpdateConfigurationV2Response Apimodel update configuration V2 response
//
// swagger:model Apimodel update configuration V2 response.
type ApimodelUpdateConfigurationV2Response struct {

	// applymask
	ApplyMask bool `json:"applyMask"`

	// configid
	// Required: true
	ConfigID *string `json:"configId"`

	// configname
	// Required: true
	ConfigName *string `json:"configName"`

	// description
	Description string `json:"description,omitempty"`

	// source
	Source string `json:"source,omitempty"`

	// value
	// Required: true
	Value *string `json:"value"`
}

// Validate validates this Apimodel update configuration V2 response
func (m *ApimodelUpdateConfigurationV2Response) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConfigID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateConfigName(formats); err != nil {
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

func (m *ApimodelUpdateConfigurationV2Response) validateConfigID(formats strfmt.Registry) error {

	if err := validate.Required("configId", "body", m.ConfigID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelUpdateConfigurationV2Response) validateConfigName(formats strfmt.Registry) error {

	if err := validate.Required("configName", "body", m.ConfigName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelUpdateConfigurationV2Response) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelUpdateConfigurationV2Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelUpdateConfigurationV2Response) UnmarshalBinary(b []byte) error {
	var res ApimodelUpdateConfigurationV2Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
