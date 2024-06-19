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

// PaymentOrderChargeRequest Payment order charge request
//
// swagger:model Payment order charge request.
type PaymentOrderChargeRequest struct {

	// external transaction id
	ExtTxID string `json:"extTxId,omitempty"`

	// payment method
	PaymentMethod string `json:"paymentMethod,omitempty"`

	// payment provider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'NEONPAY', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	// Required: true
	PaymentProvider *string `json:"paymentProvider"`
}

// Validate validates this Payment order charge request
func (m *PaymentOrderChargeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePaymentProvider(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var paymentOrderChargeRequestTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "NEONPAY", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderChargeRequestTypePaymentProviderPropEnum = append(paymentOrderChargeRequestTypePaymentProviderPropEnum, v)
	}
}

const (

	// PaymentOrderChargeRequestPaymentProviderADYEN captures enum value "ADYEN"
	PaymentOrderChargeRequestPaymentProviderADYEN string = "ADYEN"

	// PaymentOrderChargeRequestPaymentProviderALIPAY captures enum value "ALIPAY"
	PaymentOrderChargeRequestPaymentProviderALIPAY string = "ALIPAY"

	// PaymentOrderChargeRequestPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	PaymentOrderChargeRequestPaymentProviderCHECKOUT string = "CHECKOUT"

	// PaymentOrderChargeRequestPaymentProviderNEONPAY captures enum value "NEONPAY"
	PaymentOrderChargeRequestPaymentProviderNEONPAY string = "NEONPAY"

	// PaymentOrderChargeRequestPaymentProviderPAYPAL captures enum value "PAYPAL"
	PaymentOrderChargeRequestPaymentProviderPAYPAL string = "PAYPAL"

	// PaymentOrderChargeRequestPaymentProviderSTRIPE captures enum value "STRIPE"
	PaymentOrderChargeRequestPaymentProviderSTRIPE string = "STRIPE"

	// PaymentOrderChargeRequestPaymentProviderWALLET captures enum value "WALLET"
	PaymentOrderChargeRequestPaymentProviderWALLET string = "WALLET"

	// PaymentOrderChargeRequestPaymentProviderWXPAY captures enum value "WXPAY"
	PaymentOrderChargeRequestPaymentProviderWXPAY string = "WXPAY"

	// PaymentOrderChargeRequestPaymentProviderXSOLLA captures enum value "XSOLLA"
	PaymentOrderChargeRequestPaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *PaymentOrderChargeRequest) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderChargeRequestTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderChargeRequest) validatePaymentProvider(formats strfmt.Registry) error {

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
func (m *PaymentOrderChargeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderChargeRequest) UnmarshalBinary(b []byte) error {
	var res PaymentOrderChargeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
