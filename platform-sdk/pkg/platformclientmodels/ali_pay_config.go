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

// AliPayConfig Ali pay config
//
// swagger:model Ali pay config.
type AliPayConfig struct {

	// appId
	AppID string `json:"appId,omitempty"`

	// privateKey
	PrivateKey string `json:"privateKey,omitempty"`

	// publicKey
	PublicKey string `json:"publicKey,omitempty"`

	// returnUrl
	ReturnURL string `json:"returnUrl,omitempty"`
}

// Validate validates this Ali pay config
func (m *AliPayConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AliPayConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AliPayConfig) UnmarshalBinary(b []byte) error {
	var res AliPayConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
