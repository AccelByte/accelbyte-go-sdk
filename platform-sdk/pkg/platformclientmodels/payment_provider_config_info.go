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

// PaymentProviderConfigInfo Payment provider config info
//
// swagger:model Payment provider config info.
type PaymentProviderConfigInfo struct {

	// aggregate payment provider, allow empty value
	// Enum: ['ADYEN', 'CHECKOUT', 'NEONPAY', 'STRIPE', 'XSOLLA']
	Aggregate string `json:"aggregate,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// paymentMerchantConfigId
	PaymentMerchantConfigID string `json:"paymentMerchantConfigId,omitempty"`

	// region
	// Required: true
	Region *string `json:"region"`

	// sandbox taxjar api token
	SandboxTaxJarAPIToken string `json:"sandboxTaxJarApiToken,omitempty"`

	// special payment providers = ['ALIPAY', 'WXPAY'], allow empty value
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'NEONPAY', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	Specials []string `json:"specials,omitempty"`

	// taxjar api token, required when taxJarEnabled=true and useGlobalTaxJarApiToken=false
	TaxJarAPIToken string `json:"taxJarApiToken,omitempty"`

	// taxjar integration enabled
	TaxJarEnabled bool `json:"taxJarEnabled"`

	// if use global taxjar token
	UseGlobalTaxJarAPIToken bool `json:"useGlobalTaxJarApiToken"`
}

// Validate validates this Payment provider config info
func (m *PaymentProviderConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
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

var paymentProviderConfigInfoTypeAggregatePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "CHECKOUT", "NEONPAY", "STRIPE", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentProviderConfigInfoTypeAggregatePropEnum = append(paymentProviderConfigInfoTypeAggregatePropEnum, v)
	}
}

const (

	// PaymentProviderConfigInfoAggregateADYEN captures enum value "ADYEN"
	PaymentProviderConfigInfoAggregateADYEN string = "ADYEN"

	// PaymentProviderConfigInfoAggregateCHECKOUT captures enum value "CHECKOUT"
	PaymentProviderConfigInfoAggregateCHECKOUT string = "CHECKOUT"

	// PaymentProviderConfigInfoAggregateNEONPAY captures enum value "NEONPAY"
	PaymentProviderConfigInfoAggregateNEONPAY string = "NEONPAY"

	// PaymentProviderConfigInfoAggregateSTRIPE captures enum value "STRIPE"
	PaymentProviderConfigInfoAggregateSTRIPE string = "STRIPE"

	// PaymentProviderConfigInfoAggregateXSOLLA captures enum value "XSOLLA"
	PaymentProviderConfigInfoAggregateXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *PaymentProviderConfigInfo) validateAggregateEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentProviderConfigInfoTypeAggregatePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentProviderConfigInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *PaymentProviderConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *PaymentProviderConfigInfo) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

var paymentProviderConfigInfoTypeSpecialsItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "NEONPAY", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentProviderConfigInfoTypeSpecialsItemsEnum = append(paymentProviderConfigInfoTypeSpecialsItemsEnum, v)
	}
}

const (

	// PaymentProviderConfigInfoSpecialsADYEN captures enum value "ADYEN"
	PaymentProviderConfigInfoSpecialsADYEN string = "ADYEN"

	// PaymentProviderConfigInfoSpecialsALIPAY captures enum value "ALIPAY"
	PaymentProviderConfigInfoSpecialsALIPAY string = "ALIPAY"

	// PaymentProviderConfigInfoSpecialsCHECKOUT captures enum value "CHECKOUT"
	PaymentProviderConfigInfoSpecialsCHECKOUT string = "CHECKOUT"

	// PaymentProviderConfigInfoSpecialsNEONPAY captures enum value "NEONPAY"
	PaymentProviderConfigInfoSpecialsNEONPAY string = "NEONPAY"

	// PaymentProviderConfigInfoSpecialsPAYPAL captures enum value "PAYPAL"
	PaymentProviderConfigInfoSpecialsPAYPAL string = "PAYPAL"

	// PaymentProviderConfigInfoSpecialsSTRIPE captures enum value "STRIPE"
	PaymentProviderConfigInfoSpecialsSTRIPE string = "STRIPE"

	// PaymentProviderConfigInfoSpecialsWALLET captures enum value "WALLET"
	PaymentProviderConfigInfoSpecialsWALLET string = "WALLET"

	// PaymentProviderConfigInfoSpecialsWXPAY captures enum value "WXPAY"
	PaymentProviderConfigInfoSpecialsWXPAY string = "WXPAY"

	// PaymentProviderConfigInfoSpecialsXSOLLA captures enum value "XSOLLA"
	PaymentProviderConfigInfoSpecialsXSOLLA string = "XSOLLA"
)

func (m *PaymentProviderConfigInfo) validateSpecialsItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentProviderConfigInfoTypeSpecialsItemsEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PaymentProviderConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentProviderConfigInfo) UnmarshalBinary(b []byte) error {
	var res PaymentProviderConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
