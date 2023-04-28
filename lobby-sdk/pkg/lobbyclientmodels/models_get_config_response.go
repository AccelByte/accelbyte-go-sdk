// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGetConfigResponse Models get config response
//
// swagger:model Models get config response.
type ModelsGetConfigResponse struct {

	// apikey
	// Required: true
	APIKey *string `json:"apiKey"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`
}

// Validate validates this Models get config response
func (m *ModelsGetConfigResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAPIKey(formats); err != nil {
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

func (m *ModelsGetConfigResponse) validateAPIKey(formats strfmt.Registry) error {

	if err := validate.Required("apiKey", "body", m.APIKey); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetConfigResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetConfigResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetConfigResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGetConfigResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
