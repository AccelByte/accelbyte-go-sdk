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

// StripeConfig Stripe config
//
// swagger:model Stripe config.
type StripeConfig struct {

	// specifying the payment methods that are allowed to create payment intent.
	AllowedPaymentMethodTypes []string `json:"allowedPaymentMethodTypes,omitempty"`

	// publishable key, max length is 4096
	PublishableKey string `json:"publishableKey,omitempty"`

	// secret key, max length is 4096
	SecretKey string `json:"secretKey,omitempty"`

	// webhook secret max length is 4096
	WebhookSecret string `json:"webhookSecret,omitempty"`
}

// Validate validates this Stripe config
func (m *StripeConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *StripeConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StripeConfig) UnmarshalBinary(b []byte) error {
	var res StripeConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
