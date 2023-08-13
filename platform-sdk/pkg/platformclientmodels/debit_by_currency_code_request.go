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

// DebitByCurrencyCodeRequest Debit by currency code request
//
// swagger:model Debit by currency code request.
type DebitByCurrencyCodeRequest struct {

	// allow to debit wallet balance to negative value
	AllowOverdraft bool `json:"allowOverdraft"`

	// amount
	// Required: true
	// Format: int64
	Amount *int64 `json:"amount"`

	// balance origin
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	BalanceOrigin string `json:"balanceOrigin,omitempty"`

	// balance source, default is OTHER
	// Enum: ['DLC_REVOCATION', 'EXPIRATION', 'ORDER_REVOCATION', 'OTHER', 'PAYMENT']
	BalanceSource string `json:"balanceSource,omitempty"`

	// metadata for additional wallet transaction detail
	Metadata interface{} `json:"metadata,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`
}

// Validate validates this Debit by currency code request
func (m *DebitByCurrencyCodeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAmount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DebitByCurrencyCodeRequest) validateAmount(formats strfmt.Registry) error {

	if err := validate.Required("amount", "body", m.Amount); err != nil {
		return err
	}

	return nil
}

var debitByCurrencyCodeRequestTypeBalanceOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		debitByCurrencyCodeRequestTypeBalanceOriginPropEnum = append(debitByCurrencyCodeRequestTypeBalanceOriginPropEnum, v)
	}
}

const (

	// DebitByCurrencyCodeRequestBalanceOriginEPIC captures enum value "EPIC"
	DebitByCurrencyCodeRequestBalanceOriginEPIC string = "EPIC"

	// DebitByCurrencyCodeRequestBalanceOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	DebitByCurrencyCodeRequestBalanceOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// DebitByCurrencyCodeRequestBalanceOriginIOS captures enum value "IOS"
	DebitByCurrencyCodeRequestBalanceOriginIOS string = "IOS"

	// DebitByCurrencyCodeRequestBalanceOriginNINTENDO captures enum value "NINTENDO"
	DebitByCurrencyCodeRequestBalanceOriginNINTENDO string = "NINTENDO"

	// DebitByCurrencyCodeRequestBalanceOriginOCULUS captures enum value "OCULUS"
	DebitByCurrencyCodeRequestBalanceOriginOCULUS string = "OCULUS"

	// DebitByCurrencyCodeRequestBalanceOriginOTHER captures enum value "OTHER"
	DebitByCurrencyCodeRequestBalanceOriginOTHER string = "OTHER"

	// DebitByCurrencyCodeRequestBalanceOriginPLAYSTATION captures enum value "PLAYSTATION"
	DebitByCurrencyCodeRequestBalanceOriginPLAYSTATION string = "PLAYSTATION"

	// DebitByCurrencyCodeRequestBalanceOriginSTEAM captures enum value "STEAM"
	DebitByCurrencyCodeRequestBalanceOriginSTEAM string = "STEAM"

	// DebitByCurrencyCodeRequestBalanceOriginSYSTEM captures enum value "SYSTEM"
	DebitByCurrencyCodeRequestBalanceOriginSYSTEM string = "SYSTEM"

	// DebitByCurrencyCodeRequestBalanceOriginTWITCH captures enum value "TWITCH"
	DebitByCurrencyCodeRequestBalanceOriginTWITCH string = "TWITCH"

	// DebitByCurrencyCodeRequestBalanceOriginXBOX captures enum value "XBOX"
	DebitByCurrencyCodeRequestBalanceOriginXBOX string = "XBOX"
)

// prop value enum
func (m *DebitByCurrencyCodeRequest) validateBalanceOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, debitByCurrencyCodeRequestTypeBalanceOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

var debitByCurrencyCodeRequestTypeBalanceSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DLC_REVOCATION", "EXPIRATION", "ORDER_REVOCATION", "OTHER", "PAYMENT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		debitByCurrencyCodeRequestTypeBalanceSourcePropEnum = append(debitByCurrencyCodeRequestTypeBalanceSourcePropEnum, v)
	}
}

const (

	// DebitByCurrencyCodeRequestBalanceSourceDLCREVOCATION captures enum value "DLC_REVOCATION"
	DebitByCurrencyCodeRequestBalanceSourceDLCREVOCATION string = "DLC_REVOCATION"

	// DebitByCurrencyCodeRequestBalanceSourceEXPIRATION captures enum value "EXPIRATION"
	DebitByCurrencyCodeRequestBalanceSourceEXPIRATION string = "EXPIRATION"

	// DebitByCurrencyCodeRequestBalanceSourceORDERREVOCATION captures enum value "ORDER_REVOCATION"
	DebitByCurrencyCodeRequestBalanceSourceORDERREVOCATION string = "ORDER_REVOCATION"

	// DebitByCurrencyCodeRequestBalanceSourceOTHER captures enum value "OTHER"
	DebitByCurrencyCodeRequestBalanceSourceOTHER string = "OTHER"

	// DebitByCurrencyCodeRequestBalanceSourcePAYMENT captures enum value "PAYMENT"
	DebitByCurrencyCodeRequestBalanceSourcePAYMENT string = "PAYMENT"
)

// prop value enum
func (m *DebitByCurrencyCodeRequest) validateBalanceSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, debitByCurrencyCodeRequestTypeBalanceSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DebitByCurrencyCodeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DebitByCurrencyCodeRequest) UnmarshalBinary(b []byte) error {
	var res DebitByCurrencyCodeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
