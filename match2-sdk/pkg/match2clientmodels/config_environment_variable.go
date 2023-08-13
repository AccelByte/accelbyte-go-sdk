// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ConfigEnvironmentVariable Config environment variable
//
// swagger:model Config environment variable.
type ConfigEnvironmentVariable struct {

	// actualvalue
	ActualValue string `json:"actualValue,omitempty"`

	// defaultvalue
	DefaultValue string `json:"defaultValue,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this Config environment variable
func (m *ConfigEnvironmentVariable) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ConfigEnvironmentVariable) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ConfigEnvironmentVariable) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ConfigEnvironmentVariable) UnmarshalBinary(b []byte) error {
	var res ConfigEnvironmentVariable
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
