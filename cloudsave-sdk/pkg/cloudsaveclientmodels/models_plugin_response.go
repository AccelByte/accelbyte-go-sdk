// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPluginResponse Models plugin response
//
// swagger:model Models plugin response.
type ModelsPluginResponse struct {

	// appconfig
	AppConfig *ModelsAppConfig `json:"appConfig,omitempty"`

	// customconfig
	CustomConfig *ModelsCustomConfig `json:"customConfig,omitempty"`

	// customfunction
	// Required: true
	CustomFunction *ModelsCustomFunction `json:"customFunction"`

	// extendtype
	// Required: true
	ExtendType *string `json:"extendType"`

	// namespace
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

func (m *ModelsPluginResponse) validateExtendType(formats strfmt.Registry) error {

	if err := validate.Required("extendType", "body", m.ExtendType); err != nil {
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
