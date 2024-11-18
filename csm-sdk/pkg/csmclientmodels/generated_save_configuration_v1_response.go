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

// GeneratedSaveConfigurationV1Response Generated save configuration V1 response
//
// swagger:model Generated save configuration V1 response.
type GeneratedSaveConfigurationV1Response struct {

	// configid
	// Required: true
	ConfigID *string `json:"configId"`

	// configname
	// Required: true
	ConfigName *string `json:"configName"`
}

// Validate validates this Generated save configuration V1 response
func (m *GeneratedSaveConfigurationV1Response) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConfigID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateConfigName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GeneratedSaveConfigurationV1Response) validateConfigID(formats strfmt.Registry) error {

	if err := validate.Required("configId", "body", m.ConfigID); err != nil {
		return err
	}

	return nil
}

func (m *GeneratedSaveConfigurationV1Response) validateConfigName(formats strfmt.Registry) error {

	if err := validate.Required("configName", "body", m.ConfigName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedSaveConfigurationV1Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedSaveConfigurationV1Response) UnmarshalBinary(b []byte) error {
	var res GeneratedSaveConfigurationV1Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
