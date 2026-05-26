// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelPlatformDefaultsResponse Model platform defaults response
//
// swagger:model Model platform defaults response.
type ModelPlatformDefaultsResponse struct {

	// default OAuth scopes when no custom scopes are configured for the platform. The scopes is used for server-side token exchange or authorization url construction
	// Required: true
	DefaultScopes []string `json:"defaultScopes"`

	// platform identifier
	// Required: true
	PlatformID *string `json:"platformId"`
}

// Validate validates this Model platform defaults response
func (m *ModelPlatformDefaultsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDefaultScopes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelPlatformDefaultsResponse) validateDefaultScopes(formats strfmt.Registry) error {

	if err := validate.Required("defaultScopes", "body", m.DefaultScopes); err != nil {
		return err
	}

	return nil
}

func (m *ModelPlatformDefaultsResponse) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPlatformDefaultsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPlatformDefaultsResponse) UnmarshalBinary(b []byte) error {
	var res ModelPlatformDefaultsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
