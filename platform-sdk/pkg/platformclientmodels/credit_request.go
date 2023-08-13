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

// CreditRequest Credit request
//
// swagger:model Credit request.
type CreditRequest struct {

	// amount
	// Required: true
	// Format: int64
	Amount *int64 `json:"amount"`

	// this amount expire time, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
	// Format: date-time
	ExpireAt *strfmt.DateTime `json:"expireAt,omitempty"`

	// metadata for additional information
	Metadata interface{} `json:"metadata,omitempty"`

	// origin, balance origin decided on the type of wallet, default is System
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	Origin string `json:"origin,omitempty"`

	// reason, max length is 127
	Reason string `json:"reason,omitempty"`

	// source, default is OTHER
	// Enum: ['ACHIEVEMENT', 'CONSUME_ENTITLEMENT', 'DLC', 'GIFT', 'IAP', 'OTHER', 'PROMOTION', 'PURCHASE', 'REDEEM_CODE', 'REFERRAL_BONUS', 'REFUND', 'REWARD', 'SELL_BACK']
	Source string `json:"source,omitempty"`
}

// Validate validates this Credit request
func (m *CreditRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAmount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CreditRequest) validateAmount(formats strfmt.Registry) error {

	if err := validate.Required("amount", "body", m.Amount); err != nil {
		return err
	}

	return nil
}

var creditRequestTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		creditRequestTypeOriginPropEnum = append(creditRequestTypeOriginPropEnum, v)
	}
}

const (

	// CreditRequestOriginEPIC captures enum value "EPIC"
	CreditRequestOriginEPIC string = "EPIC"

	// CreditRequestOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	CreditRequestOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// CreditRequestOriginIOS captures enum value "IOS"
	CreditRequestOriginIOS string = "IOS"

	// CreditRequestOriginNINTENDO captures enum value "NINTENDO"
	CreditRequestOriginNINTENDO string = "NINTENDO"

	// CreditRequestOriginOCULUS captures enum value "OCULUS"
	CreditRequestOriginOCULUS string = "OCULUS"

	// CreditRequestOriginOTHER captures enum value "OTHER"
	CreditRequestOriginOTHER string = "OTHER"

	// CreditRequestOriginPLAYSTATION captures enum value "PLAYSTATION"
	CreditRequestOriginPLAYSTATION string = "PLAYSTATION"

	// CreditRequestOriginSTEAM captures enum value "STEAM"
	CreditRequestOriginSTEAM string = "STEAM"

	// CreditRequestOriginSYSTEM captures enum value "SYSTEM"
	CreditRequestOriginSYSTEM string = "SYSTEM"

	// CreditRequestOriginTWITCH captures enum value "TWITCH"
	CreditRequestOriginTWITCH string = "TWITCH"

	// CreditRequestOriginXBOX captures enum value "XBOX"
	CreditRequestOriginXBOX string = "XBOX"
)

// prop value enum
func (m *CreditRequest) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, creditRequestTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

var creditRequestTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACHIEVEMENT", "CONSUME_ENTITLEMENT", "DLC", "GIFT", "IAP", "OTHER", "PROMOTION", "PURCHASE", "REDEEM_CODE", "REFERRAL_BONUS", "REFUND", "REWARD", "SELL_BACK"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		creditRequestTypeSourcePropEnum = append(creditRequestTypeSourcePropEnum, v)
	}
}

const (

	// CreditRequestSourceACHIEVEMENT captures enum value "ACHIEVEMENT"
	CreditRequestSourceACHIEVEMENT string = "ACHIEVEMENT"

	// CreditRequestSourceCONSUMEENTITLEMENT captures enum value "CONSUME_ENTITLEMENT"
	CreditRequestSourceCONSUMEENTITLEMENT string = "CONSUME_ENTITLEMENT"

	// CreditRequestSourceDLC captures enum value "DLC"
	CreditRequestSourceDLC string = "DLC"

	// CreditRequestSourceGIFT captures enum value "GIFT"
	CreditRequestSourceGIFT string = "GIFT"

	// CreditRequestSourceIAP captures enum value "IAP"
	CreditRequestSourceIAP string = "IAP"

	// CreditRequestSourceOTHER captures enum value "OTHER"
	CreditRequestSourceOTHER string = "OTHER"

	// CreditRequestSourcePROMOTION captures enum value "PROMOTION"
	CreditRequestSourcePROMOTION string = "PROMOTION"

	// CreditRequestSourcePURCHASE captures enum value "PURCHASE"
	CreditRequestSourcePURCHASE string = "PURCHASE"

	// CreditRequestSourceREDEEMCODE captures enum value "REDEEM_CODE"
	CreditRequestSourceREDEEMCODE string = "REDEEM_CODE"

	// CreditRequestSourceREFERRALBONUS captures enum value "REFERRAL_BONUS"
	CreditRequestSourceREFERRALBONUS string = "REFERRAL_BONUS"

	// CreditRequestSourceREFUND captures enum value "REFUND"
	CreditRequestSourceREFUND string = "REFUND"

	// CreditRequestSourceREWARD captures enum value "REWARD"
	CreditRequestSourceREWARD string = "REWARD"

	// CreditRequestSourceSELLBACK captures enum value "SELL_BACK"
	CreditRequestSourceSELLBACK string = "SELL_BACK"
)

// prop value enum
func (m *CreditRequest) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, creditRequestTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CreditRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreditRequest) UnmarshalBinary(b []byte) error {
	var res CreditRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
