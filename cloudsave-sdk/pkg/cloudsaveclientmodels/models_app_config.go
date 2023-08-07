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

// ModelsAppConfig Models app config
//
// swagger:model Models app config.
type ModelsAppConfig struct {

	// Extend app name
	// Required: true
	AppName *string `json:"appName"`
}

// Validate validates this Models app config
func (m *ModelsAppConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAppConfig) validateAppName(formats strfmt.Registry) error {

	if err := validate.Required("appName", "body", m.AppName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAppConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAppConfig) UnmarshalBinary(b []byte) error {
	var res ModelsAppConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
