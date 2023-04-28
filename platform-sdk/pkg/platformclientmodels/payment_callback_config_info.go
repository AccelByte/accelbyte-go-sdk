// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PaymentCallbackConfigInfo Payment callback config info
//
// swagger:model Payment callback config info.
type PaymentCallbackConfigInfo struct {

	// mock workflow while set true, default false
	DryRun bool `json:"dryRun"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// notify url for ECommerce payment notification
	NotifyURL string `json:"notifyUrl,omitempty"`

	// private key to encode/decode ECommerce payload
	PrivateKey string `json:"privateKey,omitempty"`
}

// Validate validates this Payment callback config info
func (m *PaymentCallbackConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentCallbackConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentCallbackConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentCallbackConfigInfo) UnmarshalBinary(b []byte) error {
	var res PaymentCallbackConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
