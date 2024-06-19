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

// PaymentMerchantConfigInfo Payment merchant config info
//
// swagger:model Payment merchant config info.
type PaymentMerchantConfigInfo struct {

	// adyenConfig
	AdyenConfig *AdyenConfig `json:"adyenConfig,omitempty"`

	// adyenSandboxConfig
	AdyenSandboxConfig *AdyenConfig `json:"adyenSandboxConfig,omitempty"`

	// aliPayConfig
	AliPayConfig *AliPayConfig `json:"aliPayConfig,omitempty"`

	// aliPaySandboxConfig
	AliPaySandboxConfig *AliPayConfig `json:"aliPaySandboxConfig,omitempty"`

	// checkoutConfig
	CheckoutConfig *CheckoutConfig `json:"checkoutConfig,omitempty"`

	// checkoutSandboxConfig
	CheckoutSandboxConfig *CheckoutConfig `json:"checkoutSandboxConfig,omitempty"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// id
	// Required: true
	ID *string `json:"id"`

	// neonPayConfig
	NeonPayConfig *NeonPayConfig `json:"neonPayConfig,omitempty"`

	// neonPaySandboxConfig
	NeonPaySandboxConfig *NeonPayConfig `json:"neonPaySandboxConfig,omitempty"`

	// payPalConfig
	PayPalConfig *PayPalConfig `json:"payPalConfig,omitempty"`

	// payPalSandboxConfig
	PayPalSandboxConfig *PayPalConfig `json:"payPalSandboxConfig,omitempty"`

	// stripeConfig
	StripeConfig *StripeConfig `json:"stripeConfig,omitempty"`

	// stripeSandboxConfig
	StripeSandboxConfig *StripeConfig `json:"stripeSandboxConfig,omitempty"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// wxPayConfig
	WxPayConfig *WxPayConfigInfo `json:"wxPayConfig,omitempty"`

	// xsollaConfig
	XsollaConfig *XsollaConfig `json:"xsollaConfig,omitempty"`

	// xsollaPaywallConfig
	XsollaPaywallConfig *XsollaPaywallConfig `json:"xsollaPaywallConfig,omitempty"`
}

// Validate validates this Payment merchant config info
func (m *PaymentMerchantConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentMerchantConfigInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentMerchantConfigInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *PaymentMerchantConfigInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentMerchantConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentMerchantConfigInfo) UnmarshalBinary(b []byte) error {
	var res PaymentMerchantConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
