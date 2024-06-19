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

// PaymentOrderNotifySimulation Payment order notify simulation
//
// swagger:model Payment order notify simulation.
type PaymentOrderNotifySimulation struct {

	// amount
	// Format: int32
	Amount int32 `json:"amount,omitempty"`

	// currency code
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// notify type
	// Enum: ['CHARGE', 'REFUND']
	// Required: true
	NotifyType *string `json:"notifyType"`

	// payment provider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'NEONPAY', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	// Required: true
	PaymentProvider *string `json:"paymentProvider"`

	// salesTax for xsolla
	// Format: int32
	SalesTax int32 `json:"salesTax,omitempty"`

	// vat for xsolla
	// Format: int32
	Vat int32 `json:"vat,omitempty"`
}

// Validate validates this Payment order notify simulation
func (m *PaymentOrderNotifySimulation) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNotifyType(formats); err != nil {
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

func (m *PaymentOrderNotifySimulation) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

var paymentOrderNotifySimulationTypeNotifyTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHARGE", "REFUND"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderNotifySimulationTypeNotifyTypePropEnum = append(paymentOrderNotifySimulationTypeNotifyTypePropEnum, v)
	}
}

const (

	// PaymentOrderNotifySimulationNotifyTypeCHARGE captures enum value "CHARGE"
	PaymentOrderNotifySimulationNotifyTypeCHARGE string = "CHARGE"

	// PaymentOrderNotifySimulationNotifyTypeREFUND captures enum value "REFUND"
	PaymentOrderNotifySimulationNotifyTypeREFUND string = "REFUND"
)

// prop value enum
func (m *PaymentOrderNotifySimulation) validateNotifyTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderNotifySimulationTypeNotifyTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderNotifySimulation) validateNotifyType(formats strfmt.Registry) error {

	if err := validate.Required("notifyType", "body", m.NotifyType); err != nil {
		return err
	}

	// value enum
	if err := m.validateNotifyTypeEnum("notifyType", "body", *m.NotifyType); err != nil {
		return err
	}

	return nil
}

var paymentOrderNotifySimulationTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "NEONPAY", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderNotifySimulationTypePaymentProviderPropEnum = append(paymentOrderNotifySimulationTypePaymentProviderPropEnum, v)
	}
}

const (

	// PaymentOrderNotifySimulationPaymentProviderADYEN captures enum value "ADYEN"
	PaymentOrderNotifySimulationPaymentProviderADYEN string = "ADYEN"

	// PaymentOrderNotifySimulationPaymentProviderALIPAY captures enum value "ALIPAY"
	PaymentOrderNotifySimulationPaymentProviderALIPAY string = "ALIPAY"

	// PaymentOrderNotifySimulationPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	PaymentOrderNotifySimulationPaymentProviderCHECKOUT string = "CHECKOUT"

	// PaymentOrderNotifySimulationPaymentProviderNEONPAY captures enum value "NEONPAY"
	PaymentOrderNotifySimulationPaymentProviderNEONPAY string = "NEONPAY"

	// PaymentOrderNotifySimulationPaymentProviderPAYPAL captures enum value "PAYPAL"
	PaymentOrderNotifySimulationPaymentProviderPAYPAL string = "PAYPAL"

	// PaymentOrderNotifySimulationPaymentProviderSTRIPE captures enum value "STRIPE"
	PaymentOrderNotifySimulationPaymentProviderSTRIPE string = "STRIPE"

	// PaymentOrderNotifySimulationPaymentProviderWALLET captures enum value "WALLET"
	PaymentOrderNotifySimulationPaymentProviderWALLET string = "WALLET"

	// PaymentOrderNotifySimulationPaymentProviderWXPAY captures enum value "WXPAY"
	PaymentOrderNotifySimulationPaymentProviderWXPAY string = "WXPAY"

	// PaymentOrderNotifySimulationPaymentProviderXSOLLA captures enum value "XSOLLA"
	PaymentOrderNotifySimulationPaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *PaymentOrderNotifySimulation) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderNotifySimulationTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderNotifySimulation) validatePaymentProvider(formats strfmt.Registry) error {

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
func (m *PaymentOrderNotifySimulation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderNotifySimulation) UnmarshalBinary(b []byte) error {
	var res PaymentOrderNotifySimulation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
