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

// APIMatchFunctionConfig Api match function config
//
// swagger:model Api match function config.
type APIMatchFunctionConfig struct {

	// match_function
	// Required: true
	MatchFunction *string `json:"match_function"`

	// url
	// Required: true
	URL *string `json:"url"`
}

// Validate validates this Api match function config
func (m *APIMatchFunctionConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatchFunction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIMatchFunctionConfig) validateMatchFunction(formats strfmt.Registry) error {

	if err := validate.Required("match_function", "body", m.MatchFunction); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchFunctionConfig) validateURL(formats strfmt.Registry) error {

	if err := validate.Required("url", "body", m.URL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIMatchFunctionConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIMatchFunctionConfig) UnmarshalBinary(b []byte) error {
	var res APIMatchFunctionConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
