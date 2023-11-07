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

// DebitByWalletPlatformRequest Debit by wallet platform request
//
// swagger:model Debit by wallet platform request.
type DebitByWalletPlatformRequest struct {

	// amount
	// Required: true
	// Format: int64
	Amount *int64 `json:"amount"`

	// debitBalanceSource, default is OTHER
	// Enum: ['DLC_REVOCATION', 'EXPIRATION', 'IAP_REVOCATION', 'ORDER_REVOCATION', 'OTHER', 'PAYMENT', 'TRADE']
	DebitBalanceSource string `json:"debitBalanceSource,omitempty"`

	// metadata for additional wallet transaction detail
	Metadata interface{} `json:"metadata,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`

	// walletPlatform source, default is OTHER
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'Xbox']
	WalletPlatform string `json:"walletPlatform,omitempty"`
}

// Validate validates this Debit by wallet platform request
func (m *DebitByWalletPlatformRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAmount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DebitByWalletPlatformRequest) validateAmount(formats strfmt.Registry) error {

	if err := validate.Required("amount", "body", m.Amount); err != nil {
		return err
	}

	return nil
}

var debitByWalletPlatformRequestTypeDebitBalanceSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DLC_REVOCATION", "EXPIRATION", "IAP_REVOCATION", "ORDER_REVOCATION", "OTHER", "PAYMENT", "TRADE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		debitByWalletPlatformRequestTypeDebitBalanceSourcePropEnum = append(debitByWalletPlatformRequestTypeDebitBalanceSourcePropEnum, v)
	}
}

const (

	// DebitByWalletPlatformRequestDebitBalanceSourceDLCREVOCATION captures enum value "DLC_REVOCATION"
	DebitByWalletPlatformRequestDebitBalanceSourceDLCREVOCATION string = "DLC_REVOCATION"

	// DebitByWalletPlatformRequestDebitBalanceSourceEXPIRATION captures enum value "EXPIRATION"
	DebitByWalletPlatformRequestDebitBalanceSourceEXPIRATION string = "EXPIRATION"

	// DebitByWalletPlatformRequestDebitBalanceSourceIAPREVOCATION captures enum value "IAP_REVOCATION"
	DebitByWalletPlatformRequestDebitBalanceSourceIAPREVOCATION string = "IAP_REVOCATION"

	// DebitByWalletPlatformRequestDebitBalanceSourceORDERREVOCATION captures enum value "ORDER_REVOCATION"
	DebitByWalletPlatformRequestDebitBalanceSourceORDERREVOCATION string = "ORDER_REVOCATION"

	// DebitByWalletPlatformRequestDebitBalanceSourceOTHER captures enum value "OTHER"
	DebitByWalletPlatformRequestDebitBalanceSourceOTHER string = "OTHER"

	// DebitByWalletPlatformRequestDebitBalanceSourcePAYMENT captures enum value "PAYMENT"
	DebitByWalletPlatformRequestDebitBalanceSourcePAYMENT string = "PAYMENT"

	// DebitByWalletPlatformRequestDebitBalanceSourceTRADE captures enum value "TRADE"
	DebitByWalletPlatformRequestDebitBalanceSourceTRADE string = "TRADE"
)

// prop value enum
func (m *DebitByWalletPlatformRequest) validateDebitBalanceSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, debitByWalletPlatformRequestTypeDebitBalanceSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

var debitByWalletPlatformRequestTypeWalletPlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		debitByWalletPlatformRequestTypeWalletPlatformPropEnum = append(debitByWalletPlatformRequestTypeWalletPlatformPropEnum, v)
	}
}

const (

	// DebitByWalletPlatformRequestWalletPlatformEPIC captures enum value "EPIC"
	DebitByWalletPlatformRequestWalletPlatformEPIC string = "EPIC"

	// DebitByWalletPlatformRequestWalletPlatformGOOGLEPLAY captures enum value "GOOGLEPLAY"
	DebitByWalletPlatformRequestWalletPlatformGOOGLEPLAY string = "GOOGLEPLAY"

	// DebitByWalletPlatformRequestWalletPlatformIOS captures enum value "IOS"
	DebitByWalletPlatformRequestWalletPlatformIOS string = "IOS"

	// DebitByWalletPlatformRequestWalletPlatformNINTENDO captures enum value "NINTENDO"
	DebitByWalletPlatformRequestWalletPlatformNINTENDO string = "NINTENDO"

	// DebitByWalletPlatformRequestWalletPlatformOCULUS captures enum value "OCULUS"
	DebitByWalletPlatformRequestWalletPlatformOCULUS string = "OCULUS"

	// DebitByWalletPlatformRequestWalletPlatformOTHER captures enum value "OTHER"
	DebitByWalletPlatformRequestWalletPlatformOTHER string = "OTHER"

	// DebitByWalletPlatformRequestWalletPlatformPLAYSTATION captures enum value "PLAYSTATION"
	DebitByWalletPlatformRequestWalletPlatformPLAYSTATION string = "PLAYSTATION"

	// DebitByWalletPlatformRequestWalletPlatformSTEAM captures enum value "STEAM"
	DebitByWalletPlatformRequestWalletPlatformSTEAM string = "STEAM"

	// DebitByWalletPlatformRequestWalletPlatformXBOX captures enum value "XBOX"
	DebitByWalletPlatformRequestWalletPlatformXBOX string = "XBOX"
)

// prop value enum
func (m *DebitByWalletPlatformRequest) validateWalletPlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, debitByWalletPlatformRequestTypeWalletPlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DebitByWalletPlatformRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DebitByWalletPlatformRequest) UnmarshalBinary(b []byte) error {
	var res DebitByWalletPlatformRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
