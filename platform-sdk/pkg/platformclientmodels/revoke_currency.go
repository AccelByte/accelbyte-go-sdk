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

// RevokeCurrency Revoke currency
//
// swagger:model Revoke currency.
type RevokeCurrency struct {

	// balance origin
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	BalanceOrigin string `json:"balanceOrigin,omitempty"`

	// currency code
	CurrencyCode string `json:"currencyCode,omitempty"`

	// currency namespace
	Namespace string `json:"namespace,omitempty"`
}

// Validate validates this Revoke currency
func (m *RevokeCurrency) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var revokeCurrencyTypeBalanceOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revokeCurrencyTypeBalanceOriginPropEnum = append(revokeCurrencyTypeBalanceOriginPropEnum, v)
	}
}

const (

	// RevokeCurrencyBalanceOriginEPIC captures enum value "EPIC"
	RevokeCurrencyBalanceOriginEPIC string = "EPIC"

	// RevokeCurrencyBalanceOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	RevokeCurrencyBalanceOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// RevokeCurrencyBalanceOriginIOS captures enum value "IOS"
	RevokeCurrencyBalanceOriginIOS string = "IOS"

	// RevokeCurrencyBalanceOriginNINTENDO captures enum value "NINTENDO"
	RevokeCurrencyBalanceOriginNINTENDO string = "NINTENDO"

	// RevokeCurrencyBalanceOriginOCULUS captures enum value "OCULUS"
	RevokeCurrencyBalanceOriginOCULUS string = "OCULUS"

	// RevokeCurrencyBalanceOriginOTHER captures enum value "OTHER"
	RevokeCurrencyBalanceOriginOTHER string = "OTHER"

	// RevokeCurrencyBalanceOriginPLAYSTATION captures enum value "PLAYSTATION"
	RevokeCurrencyBalanceOriginPLAYSTATION string = "PLAYSTATION"

	// RevokeCurrencyBalanceOriginSTEAM captures enum value "STEAM"
	RevokeCurrencyBalanceOriginSTEAM string = "STEAM"

	// RevokeCurrencyBalanceOriginSYSTEM captures enum value "SYSTEM"
	RevokeCurrencyBalanceOriginSYSTEM string = "SYSTEM"

	// RevokeCurrencyBalanceOriginTWITCH captures enum value "TWITCH"
	RevokeCurrencyBalanceOriginTWITCH string = "TWITCH"

	// RevokeCurrencyBalanceOriginXBOX captures enum value "XBOX"
	RevokeCurrencyBalanceOriginXBOX string = "XBOX"
)

// prop value enum
func (m *RevokeCurrency) validateBalanceOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revokeCurrencyTypeBalanceOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RevokeCurrency) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevokeCurrency) UnmarshalBinary(b []byte) error {
	var res RevokeCurrency
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
