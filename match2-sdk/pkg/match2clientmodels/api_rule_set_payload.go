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

// APIRuleSetPayload Api rule set payload
//
// swagger:model Api rule set payload.
type APIRuleSetPayload struct {

	// data
	// Required: true
	Data interface{} `json:"data"`

	// enable_custom_match_function
	// Required: true
	EnableCustomMatchFunction *bool `json:"enable_custom_match_function"`

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this Api rule set payload
func (m *APIRuleSetPayload) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnableCustomMatchFunction(formats); err != nil {
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

func (m *APIRuleSetPayload) validateEnableCustomMatchFunction(formats strfmt.Registry) error {

	if err := validate.Required("enable_custom_match_function", "body", m.EnableCustomMatchFunction); err != nil {
		return err
	}

	return nil
}

func (m *APIRuleSetPayload) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIRuleSetPayload) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIRuleSetPayload) UnmarshalBinary(b []byte) error {
	var res APIRuleSetPayload
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
