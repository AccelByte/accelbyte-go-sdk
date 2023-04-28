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

// CheckoutConfig Checkout config
//
// swagger:model Checkout config.
type CheckoutConfig struct {

	// public key, max length is 4096
	PublicKey string `json:"publicKey,omitempty"`

	// secret key, max length is 4096
	SecretKey string `json:"secretKey,omitempty"`
}

// Validate validates this Checkout config
func (m *CheckoutConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CheckoutConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CheckoutConfig) UnmarshalBinary(b []byte) error {
	var res CheckoutConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
