// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PaymentURLCreate Payment url create
//
// swagger:model Payment url create.
type PaymentURLCreate struct {

	// payment order number
	// Required: true
	PaymentOrderNo *string `json:"paymentOrderNo"`

	// payment provider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	// Required: true
	PaymentProvider *string `json:"paymentProvider"`

	// returnUrl
	ReturnURL string `json:"returnUrl,omitempty"`

	// ui, custom json string, ignore if payment provider not support or invalid setting.
	UI string `json:"ui,omitempty"`

	// payment zipCode
	ZipCode string `json:"zipCode,omitempty"`
}

// Validate validates this Payment url create
func (m *PaymentURLCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePaymentOrderNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaymentProvider(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentURLCreate) validatePaymentOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("paymentOrderNo", "body", m.PaymentOrderNo); err != nil {
		return err
	}

	return nil
}

var paymentUrlCreateTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentUrlCreateTypePaymentProviderPropEnum = append(paymentUrlCreateTypePaymentProviderPropEnum, v)
	}
}

const (

	// PaymentURLCreatePaymentProviderADYEN captures enum value "ADYEN"
	PaymentURLCreatePaymentProviderADYEN string = "ADYEN"

	// PaymentURLCreatePaymentProviderALIPAY captures enum value "ALIPAY"
	PaymentURLCreatePaymentProviderALIPAY string = "ALIPAY"

	// PaymentURLCreatePaymentProviderCHECKOUT captures enum value "CHECKOUT"
	PaymentURLCreatePaymentProviderCHECKOUT string = "CHECKOUT"

	// PaymentURLCreatePaymentProviderPAYPAL captures enum value "PAYPAL"
	PaymentURLCreatePaymentProviderPAYPAL string = "PAYPAL"

	// PaymentURLCreatePaymentProviderSTRIPE captures enum value "STRIPE"
	PaymentURLCreatePaymentProviderSTRIPE string = "STRIPE"

	// PaymentURLCreatePaymentProviderWALLET captures enum value "WALLET"
	PaymentURLCreatePaymentProviderWALLET string = "WALLET"

	// PaymentURLCreatePaymentProviderWXPAY captures enum value "WXPAY"
	PaymentURLCreatePaymentProviderWXPAY string = "WXPAY"

	// PaymentURLCreatePaymentProviderXSOLLA captures enum value "XSOLLA"
	PaymentURLCreatePaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *PaymentURLCreate) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentUrlCreateTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentURLCreate) validatePaymentProvider(formats strfmt.Registry) error {

	if err := validate.Required("paymentProvider", "body", m.PaymentProvider); err != nil {
		return err
	}

	// value enum
	if err := m.validatePaymentProviderEnum("paymentProvider", "body", *m.PaymentProvider); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentURLCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentURLCreate) UnmarshalBinary(b []byte) error {
	var res PaymentURLCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
