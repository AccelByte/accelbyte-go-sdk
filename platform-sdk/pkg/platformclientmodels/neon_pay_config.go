// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NeonPayConfig Neon pay config
//
// swagger:model Neon pay config.
type NeonPayConfig struct {

	// api key
	APIKey string `json:"apiKey,omitempty"`

	// webhook secret key
	WebhookSecretKey string `json:"webhookSecretKey,omitempty"`
}

// Validate validates this Neon pay config
func (m *NeonPayConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *NeonPayConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *NeonPayConfig) UnmarshalBinary(b []byte) error {
	var res NeonPayConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
