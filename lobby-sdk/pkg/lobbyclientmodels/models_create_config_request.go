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

// ModelsCreateConfigRequest Models create config request
//
// swagger:model Models create config request.
type ModelsCreateConfigRequest struct {

	// apikey
	// Required: true
	APIKey *string `json:"apiKey"`
}

// Validate validates this Models create config request
func (m *ModelsCreateConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAPIKey(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreateConfigRequest) validateAPIKey(formats strfmt.Registry) error {

	if err := validate.Required("apiKey", "body", m.APIKey); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateConfigRequest) UnmarshalBinary(b []byte) error {
	var res ModelsCreateConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
