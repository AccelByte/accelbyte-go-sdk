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

// PayPalConfig Pay pal config
//
// swagger:model Pay pal config.
type PayPalConfig struct {

	// client id
	ClientID string `json:"clientID,omitempty"`

	// client secret, max length is 4096
	ClientSecret string `json:"clientSecret,omitempty"`

	// return url, max length is 2048
	ReturnURL string `json:"returnUrl,omitempty"`

	// web hook id
	WebHookID string `json:"webHookId,omitempty"`
}

// Validate validates this Pay pal config
func (m *PayPalConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PayPalConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PayPalConfig) UnmarshalBinary(b []byte) error {
	var res PayPalConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
