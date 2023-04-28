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

// PaymentCallbackConfigUpdate Payment callback config update
//
// swagger:model Payment callback config update.
type PaymentCallbackConfigUpdate struct {

	// mock workflow while set true, default false
	DryRun bool `json:"dryRun"`

	// notify url for ECommerce payment notification
	NotifyURL string `json:"notifyUrl,omitempty"`

	// private key to encode/decode ECommerce payload
	PrivateKey string `json:"privateKey,omitempty"`
}

// Validate validates this Payment callback config update
func (m *PaymentCallbackConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PaymentCallbackConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentCallbackConfigUpdate) UnmarshalBinary(b []byte) error {
	var res PaymentCallbackConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
