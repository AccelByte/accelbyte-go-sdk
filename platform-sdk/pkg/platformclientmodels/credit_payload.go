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

// CreditPayload Credit payload
//
// swagger:model Credit payload.
type CreditPayload struct {

	// balanceorigin
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	BalanceOrigin string `json:"balanceOrigin,omitempty"`

	// count
	// Required: true
	// Format: int64
	Count *int64 `json:"count"`

	// currencycode
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// expireat
	// Format: date-time
	ExpireAt *strfmt.DateTime `json:"expireAt,omitempty"`
}

// Validate validates this Credit payload
func (m *CreditPayload) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var creditPayloadTypeBalanceOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		creditPayloadTypeBalanceOriginPropEnum = append(creditPayloadTypeBalanceOriginPropEnum, v)
	}
}

const (

	// CreditPayloadBalanceOriginEPIC captures enum value "EPIC"
	CreditPayloadBalanceOriginEPIC string = "EPIC"

	// CreditPayloadBalanceOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	CreditPayloadBalanceOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// CreditPayloadBalanceOriginIOS captures enum value "IOS"
	CreditPayloadBalanceOriginIOS string = "IOS"

	// CreditPayloadBalanceOriginNINTENDO captures enum value "NINTENDO"
	CreditPayloadBalanceOriginNINTENDO string = "NINTENDO"

	// CreditPayloadBalanceOriginOCULUS captures enum value "OCULUS"
	CreditPayloadBalanceOriginOCULUS string = "OCULUS"

	// CreditPayloadBalanceOriginOTHER captures enum value "OTHER"
	CreditPayloadBalanceOriginOTHER string = "OTHER"

	// CreditPayloadBalanceOriginPLAYSTATION captures enum value "PLAYSTATION"
	CreditPayloadBalanceOriginPLAYSTATION string = "PLAYSTATION"

	// CreditPayloadBalanceOriginSTEAM captures enum value "STEAM"
	CreditPayloadBalanceOriginSTEAM string = "STEAM"

	// CreditPayloadBalanceOriginSYSTEM captures enum value "SYSTEM"
	CreditPayloadBalanceOriginSYSTEM string = "SYSTEM"

	// CreditPayloadBalanceOriginTWITCH captures enum value "TWITCH"
	CreditPayloadBalanceOriginTWITCH string = "TWITCH"

	// CreditPayloadBalanceOriginXBOX captures enum value "XBOX"
	CreditPayloadBalanceOriginXBOX string = "XBOX"
)

// prop value enum
func (m *CreditPayload) validateBalanceOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, creditPayloadTypeBalanceOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CreditPayload) validateCount(formats strfmt.Registry) error {

	if err := validate.Required("count", "body", m.Count); err != nil {
		return err
	}

	return nil
}

func (m *CreditPayload) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CreditPayload) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreditPayload) UnmarshalBinary(b []byte) error {
	var res CreditPayload
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
