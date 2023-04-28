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

// BillingAccount Billing account
//
// swagger:model Billing account.
type BillingAccount struct {

	// payment addition data
	AdditionalData *AdditionalData `json:"additionalData,omitempty"`

	// payment method
	PaymentMethod string `json:"paymentMethod,omitempty"`

	// payment provider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	PaymentProvider string `json:"paymentProvider,omitempty"`
}

// Validate validates this Billing account
func (m *BillingAccount) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var billingAccountTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		billingAccountTypePaymentProviderPropEnum = append(billingAccountTypePaymentProviderPropEnum, v)
	}
}

const (

	// BillingAccountPaymentProviderADYEN captures enum value "ADYEN"
	BillingAccountPaymentProviderADYEN string = "ADYEN"

	// BillingAccountPaymentProviderALIPAY captures enum value "ALIPAY"
	BillingAccountPaymentProviderALIPAY string = "ALIPAY"

	// BillingAccountPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	BillingAccountPaymentProviderCHECKOUT string = "CHECKOUT"

	// BillingAccountPaymentProviderPAYPAL captures enum value "PAYPAL"
	BillingAccountPaymentProviderPAYPAL string = "PAYPAL"

	// BillingAccountPaymentProviderSTRIPE captures enum value "STRIPE"
	BillingAccountPaymentProviderSTRIPE string = "STRIPE"

	// BillingAccountPaymentProviderWALLET captures enum value "WALLET"
	BillingAccountPaymentProviderWALLET string = "WALLET"

	// BillingAccountPaymentProviderWXPAY captures enum value "WXPAY"
	BillingAccountPaymentProviderWXPAY string = "WXPAY"

	// BillingAccountPaymentProviderXSOLLA captures enum value "XSOLLA"
	BillingAccountPaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *BillingAccount) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, billingAccountTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BillingAccount) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BillingAccount) UnmarshalBinary(b []byte) error {
	var res BillingAccount
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
