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

// PaymentURL Payment url
//
// swagger:model Payment url.
type PaymentURL struct {

	// payment provider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'NEONPAY', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	// Required: true
	PaymentProvider *string `json:"paymentProvider"`

	// payment type
	// Enum: ['LINK', 'QR_CODE']
	// Required: true
	PaymentType *string `json:"paymentType"`

	// payment url
	PaymentURL string `json:"paymentUrl,omitempty"`

	// return url
	ReturnURL string `json:"returnUrl,omitempty"`

	// adyen session data
	SessionData string `json:"sessionData,omitempty"`

	// adyen session id
	SessionID string `json:"sessionId,omitempty"`
}

// Validate validates this Payment url
func (m *PaymentURL) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePaymentProvider(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaymentType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var paymentUrlTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "NEONPAY", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentUrlTypePaymentProviderPropEnum = append(paymentUrlTypePaymentProviderPropEnum, v)
	}
}

const (

	// PaymentURLPaymentProviderADYEN captures enum value "ADYEN"
	PaymentURLPaymentProviderADYEN string = "ADYEN"

	// PaymentURLPaymentProviderALIPAY captures enum value "ALIPAY"
	PaymentURLPaymentProviderALIPAY string = "ALIPAY"

	// PaymentURLPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	PaymentURLPaymentProviderCHECKOUT string = "CHECKOUT"

	// PaymentURLPaymentProviderNEONPAY captures enum value "NEONPAY"
	PaymentURLPaymentProviderNEONPAY string = "NEONPAY"

	// PaymentURLPaymentProviderPAYPAL captures enum value "PAYPAL"
	PaymentURLPaymentProviderPAYPAL string = "PAYPAL"

	// PaymentURLPaymentProviderSTRIPE captures enum value "STRIPE"
	PaymentURLPaymentProviderSTRIPE string = "STRIPE"

	// PaymentURLPaymentProviderWALLET captures enum value "WALLET"
	PaymentURLPaymentProviderWALLET string = "WALLET"

	// PaymentURLPaymentProviderWXPAY captures enum value "WXPAY"
	PaymentURLPaymentProviderWXPAY string = "WXPAY"

	// PaymentURLPaymentProviderXSOLLA captures enum value "XSOLLA"
	PaymentURLPaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *PaymentURL) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentUrlTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentURL) validatePaymentProvider(formats strfmt.Registry) error {

	if err := validate.Required("paymentProvider", "body", m.PaymentProvider); err != nil {
		return err
	}

	// value enum
	if err := m.validatePaymentProviderEnum("paymentProvider", "body", *m.PaymentProvider); err != nil {
		return err
	}

	return nil
}

var paymentUrlTypePaymentTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["LINK", "QR_CODE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentUrlTypePaymentTypePropEnum = append(paymentUrlTypePaymentTypePropEnum, v)
	}
}

const (

	// PaymentURLPaymentTypeLINK captures enum value "LINK"
	PaymentURLPaymentTypeLINK string = "LINK"

	// PaymentURLPaymentTypeQRCODE captures enum value "QR_CODE"
	PaymentURLPaymentTypeQRCODE string = "QR_CODE"
)

// prop value enum
func (m *PaymentURL) validatePaymentTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentUrlTypePaymentTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentURL) validatePaymentType(formats strfmt.Registry) error {

	if err := validate.Required("paymentType", "body", m.PaymentType); err != nil {
		return err
	}

	// value enum
	if err := m.validatePaymentTypeEnum("paymentType", "body", *m.PaymentType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentURL) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentURL) UnmarshalBinary(b []byte) error {
	var res PaymentURL
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
