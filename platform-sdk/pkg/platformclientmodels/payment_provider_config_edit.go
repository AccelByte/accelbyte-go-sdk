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

// PaymentProviderConfigEdit Payment provider config edit
//
// swagger:model Payment provider config edit.
type PaymentProviderConfigEdit struct {

	// aggregate payment provider, allow empty value
	// Enum: ['ADYEN', 'CHECKOUT', 'NEONPAY', 'STRIPE', 'XSOLLA']
	Aggregate string `json:"aggregate,omitempty"`

	// namespace, * indicates all namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// region, * indicates all regions
	// Required: true
	Region *string `json:"region"`

	// sandbox taxjar api token
	SandboxTaxJarAPIToken string `json:"sandboxTaxJarApiToken,omitempty"`

	// special payment providers = ['ALIPAY', 'WXPAY'], allow empty value
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'NEONPAY', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	Specials []string `json:"specials,omitempty"`

	// taxjar api token, required when taxJarEnabled=true and useGlobalTaxJarApiToken=false
	TaxJarAPIToken string `json:"taxJarApiToken,omitempty"`

	// taxjar api integration enable
	TaxJarEnabled bool `json:"taxJarEnabled"`

	// only works when taxJarEnabled=true, and if useGlobalTaxJarApiToken is true, we will reset the taxJarApiToken as null
	UseGlobalTaxJarAPIToken bool `json:"useGlobalTaxJarApiToken"`
}

// Validate validates this Payment provider config edit
func (m *PaymentProviderConfigEdit) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var paymentProviderConfigEditTypeAggregatePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "CHECKOUT", "NEONPAY", "STRIPE", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentProviderConfigEditTypeAggregatePropEnum = append(paymentProviderConfigEditTypeAggregatePropEnum, v)
	}
}

const (

	// PaymentProviderConfigEditAggregateADYEN captures enum value "ADYEN"
	PaymentProviderConfigEditAggregateADYEN string = "ADYEN"

	// PaymentProviderConfigEditAggregateCHECKOUT captures enum value "CHECKOUT"
	PaymentProviderConfigEditAggregateCHECKOUT string = "CHECKOUT"

	// PaymentProviderConfigEditAggregateNEONPAY captures enum value "NEONPAY"
	PaymentProviderConfigEditAggregateNEONPAY string = "NEONPAY"

	// PaymentProviderConfigEditAggregateSTRIPE captures enum value "STRIPE"
	PaymentProviderConfigEditAggregateSTRIPE string = "STRIPE"

	// PaymentProviderConfigEditAggregateXSOLLA captures enum value "XSOLLA"
	PaymentProviderConfigEditAggregateXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *PaymentProviderConfigEdit) validateAggregateEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentProviderConfigEditTypeAggregatePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentProviderConfigEdit) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *PaymentProviderConfigEdit) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

var paymentProviderConfigEditTypeSpecialsItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "NEONPAY", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentProviderConfigEditTypeSpecialsItemsEnum = append(paymentProviderConfigEditTypeSpecialsItemsEnum, v)
	}
}

const (

	// PaymentProviderConfigEditSpecialsADYEN captures enum value "ADYEN"
	PaymentProviderConfigEditSpecialsADYEN string = "ADYEN"

	// PaymentProviderConfigEditSpecialsALIPAY captures enum value "ALIPAY"
	PaymentProviderConfigEditSpecialsALIPAY string = "ALIPAY"

	// PaymentProviderConfigEditSpecialsCHECKOUT captures enum value "CHECKOUT"
	PaymentProviderConfigEditSpecialsCHECKOUT string = "CHECKOUT"

	// PaymentProviderConfigEditSpecialsNEONPAY captures enum value "NEONPAY"
	PaymentProviderConfigEditSpecialsNEONPAY string = "NEONPAY"

	// PaymentProviderConfigEditSpecialsPAYPAL captures enum value "PAYPAL"
	PaymentProviderConfigEditSpecialsPAYPAL string = "PAYPAL"

	// PaymentProviderConfigEditSpecialsSTRIPE captures enum value "STRIPE"
	PaymentProviderConfigEditSpecialsSTRIPE string = "STRIPE"

	// PaymentProviderConfigEditSpecialsWALLET captures enum value "WALLET"
	PaymentProviderConfigEditSpecialsWALLET string = "WALLET"

	// PaymentProviderConfigEditSpecialsWXPAY captures enum value "WXPAY"
	PaymentProviderConfigEditSpecialsWXPAY string = "WXPAY"

	// PaymentProviderConfigEditSpecialsXSOLLA captures enum value "XSOLLA"
	PaymentProviderConfigEditSpecialsXSOLLA string = "XSOLLA"
)

func (m *PaymentProviderConfigEdit) validateSpecialsItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentProviderConfigEditTypeSpecialsItemsEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PaymentProviderConfigEdit) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentProviderConfigEdit) UnmarshalBinary(b []byte) error {
	var res PaymentProviderConfigEdit
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
