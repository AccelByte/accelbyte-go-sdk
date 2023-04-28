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

// PaymentMethod Payment method
//
// swagger:model Payment method.
type PaymentMethod struct {

	// name
	// Required: true
	Name *string `json:"name"`

	// payment provider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	// Required: true
	PaymentProvider *string `json:"paymentProvider"`
}

// Validate validates this Payment method
func (m *PaymentMethod) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateName(formats); err != nil {
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

func (m *PaymentMethod) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

var paymentMethodTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentMethodTypePaymentProviderPropEnum = append(paymentMethodTypePaymentProviderPropEnum, v)
	}
}

const (

	// PaymentMethodPaymentProviderADYEN captures enum value "ADYEN"
	PaymentMethodPaymentProviderADYEN string = "ADYEN"

	// PaymentMethodPaymentProviderALIPAY captures enum value "ALIPAY"
	PaymentMethodPaymentProviderALIPAY string = "ALIPAY"

	// PaymentMethodPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	PaymentMethodPaymentProviderCHECKOUT string = "CHECKOUT"

	// PaymentMethodPaymentProviderPAYPAL captures enum value "PAYPAL"
	PaymentMethodPaymentProviderPAYPAL string = "PAYPAL"

	// PaymentMethodPaymentProviderSTRIPE captures enum value "STRIPE"
	PaymentMethodPaymentProviderSTRIPE string = "STRIPE"

	// PaymentMethodPaymentProviderWALLET captures enum value "WALLET"
	PaymentMethodPaymentProviderWALLET string = "WALLET"

	// PaymentMethodPaymentProviderWXPAY captures enum value "WXPAY"
	PaymentMethodPaymentProviderWXPAY string = "WXPAY"

	// PaymentMethodPaymentProviderXSOLLA captures enum value "XSOLLA"
	PaymentMethodPaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *PaymentMethod) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentMethodTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentMethod) validatePaymentProvider(formats strfmt.Registry) error {

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
func (m *PaymentMethod) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentMethod) UnmarshalBinary(b []byte) error {
	var res PaymentMethod
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
