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

// DebitPayload Debit payload
//
// swagger:model Debit payload.
type DebitPayload struct {

	// count
	// Required: true
	// Format: int64
	Count *int64 `json:"count"`

	// currencycode
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// walletplatform
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'Xbox']
	// Required: true
	WalletPlatform *string `json:"walletPlatform"`
}

// Validate validates this Debit payload
func (m *DebitPayload) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateWalletPlatform(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DebitPayload) validateCount(formats strfmt.Registry) error {

	if err := validate.Required("count", "body", m.Count); err != nil {
		return err
	}

	return nil
}

func (m *DebitPayload) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

var debitPayloadTypeWalletPlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		debitPayloadTypeWalletPlatformPropEnum = append(debitPayloadTypeWalletPlatformPropEnum, v)
	}
}

const (

	// DebitPayloadWalletPlatformEPIC captures enum value "EPIC"
	DebitPayloadWalletPlatformEPIC string = "EPIC"

	// DebitPayloadWalletPlatformGOOGLEPLAY captures enum value "GOOGLEPLAY"
	DebitPayloadWalletPlatformGOOGLEPLAY string = "GOOGLEPLAY"

	// DebitPayloadWalletPlatformIOS captures enum value "IOS"
	DebitPayloadWalletPlatformIOS string = "IOS"

	// DebitPayloadWalletPlatformNINTENDO captures enum value "NINTENDO"
	DebitPayloadWalletPlatformNINTENDO string = "NINTENDO"

	// DebitPayloadWalletPlatformOCULUS captures enum value "OCULUS"
	DebitPayloadWalletPlatformOCULUS string = "OCULUS"

	// DebitPayloadWalletPlatformOTHER captures enum value "OTHER"
	DebitPayloadWalletPlatformOTHER string = "OTHER"

	// DebitPayloadWalletPlatformPLAYSTATION captures enum value "PLAYSTATION"
	DebitPayloadWalletPlatformPLAYSTATION string = "PLAYSTATION"

	// DebitPayloadWalletPlatformSTEAM captures enum value "STEAM"
	DebitPayloadWalletPlatformSTEAM string = "STEAM"

	// DebitPayloadWalletPlatformXBOX captures enum value "XBOX"
	DebitPayloadWalletPlatformXBOX string = "XBOX"
)

// prop value enum
func (m *DebitPayload) validateWalletPlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, debitPayloadTypeWalletPlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *DebitPayload) validateWalletPlatform(formats strfmt.Registry) error {

	if err := validate.Required("walletPlatform", "body", m.WalletPlatform); err != nil {
		return err
	}

	// value enum
	if err := m.validateWalletPlatformEnum("walletPlatform", "body", *m.WalletPlatform); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DebitPayload) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DebitPayload) UnmarshalBinary(b []byte) error {
	var res DebitPayload
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
