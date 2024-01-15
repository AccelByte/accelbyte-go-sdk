// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPluginResponse Models plugin response
//
// swagger:model Models plugin response.
type ModelsPluginResponse struct {

	// Config for APP extend type
	AppConfig *ModelsAppConfig `json:"appConfig,omitempty"`

	// Config for CUSTOM extend type
	CustomConfig *ModelsCustomConfig `json:"customConfig,omitempty"`

	// List of functions that can be extended
	// Required: true
	CustomFunction *ModelsCustomFunction `json:"customFunction"`

	// Plugin extend type
	// Enum: ['APP', 'CUSTOM']
	// Required: true
	ExtendType *string `json:"extendType"`

	// Namespace of the game
	// Required: true
	Namespace *string `json:"namespace"`
}

// Validate validates this Models plugin response
func (m *ModelsPluginResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCustomFunction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExtendType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPluginResponse) validateCustomFunction(formats strfmt.Registry) error {

	if err := validate.Required("customFunction", "body", m.CustomFunction); err != nil {
		return err
	}

	if m.CustomFunction != nil {
		if err := m.CustomFunction.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("customFunction")
			}
			return err
		}
	}

	return nil
}

var modelsPluginResponseTypeExtendTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CUSTOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsPluginResponseTypeExtendTypePropEnum = append(modelsPluginResponseTypeExtendTypePropEnum, v)
	}
}

const (

	// ModelsPluginResponseExtendTypeAPP captures enum value "APP"
	ModelsPluginResponseExtendTypeAPP string = "APP"

	// ModelsPluginResponseExtendTypeCUSTOM captures enum value "CUSTOM"
	ModelsPluginResponseExtendTypeCUSTOM string = "CUSTOM"
)

// prop value enum
func (m *ModelsPluginResponse) validateExtendTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsPluginResponseTypeExtendTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsPluginResponse) validateExtendType(formats strfmt.Registry) error {

	if err := validate.Required("extendType", "body", m.ExtendType); err != nil {
		return err
	}

	// value enum
	if err := m.validateExtendTypeEnum("extendType", "body", *m.ExtendType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPluginResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPluginResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPluginResponse) UnmarshalBinary(b []byte) error {
	var res ModelsPluginResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
