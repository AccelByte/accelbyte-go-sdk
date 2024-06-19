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

// PaymentOrderNeonPayConfig Payment order neon pay config
//
// swagger:model Payment order neon pay config.
type PaymentOrderNeonPayConfig struct {

	// cancelUrl
	// Required: true
	CancelURL *string `json:"cancelUrl"`

	// successUrl
	// Required: true
	SuccessURL *string `json:"successUrl"`
}

// Validate validates this Payment order neon pay config
func (m *PaymentOrderNeonPayConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCancelURL(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSuccessURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentOrderNeonPayConfig) validateCancelURL(formats strfmt.Registry) error {

	if err := validate.Required("cancelUrl", "body", m.CancelURL); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderNeonPayConfig) validateSuccessURL(formats strfmt.Registry) error {

	if err := validate.Required("successUrl", "body", m.SuccessURL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentOrderNeonPayConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderNeonPayConfig) UnmarshalBinary(b []byte) error {
	var res PaymentOrderNeonPayConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
