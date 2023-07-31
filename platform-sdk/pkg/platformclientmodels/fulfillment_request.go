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

// FulfillmentRequest Fulfillment request
//
// swagger:model Fulfillment request.
type FulfillmentRequest struct {

	// duration in seconds, ignored if the endDate is present
	// Format: int32
	Duration int32 `json:"duration,omitempty"`

	// end date time
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// itemId
	ItemID string `json:"itemId,omitempty"`

	// itemSku
	ItemSku string `json:"itemSku,omitempty"`

	// language
	Language string `json:"language,omitempty"`

	// order summary for fulfillment scripts
	Order *OrderSummary `json:"order,omitempty"`

	// orderNo
	OrderNo string `json:"orderNo,omitempty"`

	// origin
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	Origin string `json:"origin,omitempty"`

	// quantity
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`

	// region
	Region string `json:"region,omitempty"`

	// source
	// Enum: ['ACHIEVEMENT', 'DLC', 'GIFT', 'IAP', 'OTHER', 'PROMOTION', 'PURCHASE', 'REDEEM_CODE', 'REFERRAL_BONUS', 'REWARD']
	Source string `json:"source,omitempty"`

	// start date time
	// Format: date-time
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`

	// storeId
	StoreID string `json:"storeId,omitempty"`
}

// Validate validates this Fulfillment request
func (m *FulfillmentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var fulfillmentRequestTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentRequestTypeOriginPropEnum = append(fulfillmentRequestTypeOriginPropEnum, v)
	}
}

const (

	// FulfillmentRequestOriginEPIC captures enum value "EPIC"
	FulfillmentRequestOriginEPIC string = "EPIC"

	// FulfillmentRequestOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	FulfillmentRequestOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// FulfillmentRequestOriginIOS captures enum value "IOS"
	FulfillmentRequestOriginIOS string = "IOS"

	// FulfillmentRequestOriginNINTENDO captures enum value "NINTENDO"
	FulfillmentRequestOriginNINTENDO string = "NINTENDO"

	// FulfillmentRequestOriginOCULUS captures enum value "OCULUS"
	FulfillmentRequestOriginOCULUS string = "OCULUS"

	// FulfillmentRequestOriginOTHER captures enum value "OTHER"
	FulfillmentRequestOriginOTHER string = "OTHER"

	// FulfillmentRequestOriginPLAYSTATION captures enum value "PLAYSTATION"
	FulfillmentRequestOriginPLAYSTATION string = "PLAYSTATION"

	// FulfillmentRequestOriginSTEAM captures enum value "STEAM"
	FulfillmentRequestOriginSTEAM string = "STEAM"

	// FulfillmentRequestOriginSYSTEM captures enum value "SYSTEM"
	FulfillmentRequestOriginSYSTEM string = "SYSTEM"

	// FulfillmentRequestOriginTWITCH captures enum value "TWITCH"
	FulfillmentRequestOriginTWITCH string = "TWITCH"

	// FulfillmentRequestOriginXBOX captures enum value "XBOX"
	FulfillmentRequestOriginXBOX string = "XBOX"
)

// prop value enum
func (m *FulfillmentRequest) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentRequestTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FulfillmentRequest) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

var fulfillmentRequestTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACHIEVEMENT", "DLC", "GIFT", "IAP", "OTHER", "PROMOTION", "PURCHASE", "REDEEM_CODE", "REFERRAL_BONUS", "REWARD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentRequestTypeSourcePropEnum = append(fulfillmentRequestTypeSourcePropEnum, v)
	}
}

const (

	// FulfillmentRequestSourceACHIEVEMENT captures enum value "ACHIEVEMENT"
	FulfillmentRequestSourceACHIEVEMENT string = "ACHIEVEMENT"

	// FulfillmentRequestSourceDLC captures enum value "DLC"
	FulfillmentRequestSourceDLC string = "DLC"

	// FulfillmentRequestSourceGIFT captures enum value "GIFT"
	FulfillmentRequestSourceGIFT string = "GIFT"

	// FulfillmentRequestSourceIAP captures enum value "IAP"
	FulfillmentRequestSourceIAP string = "IAP"

	// FulfillmentRequestSourceOTHER captures enum value "OTHER"
	FulfillmentRequestSourceOTHER string = "OTHER"

	// FulfillmentRequestSourcePROMOTION captures enum value "PROMOTION"
	FulfillmentRequestSourcePROMOTION string = "PROMOTION"

	// FulfillmentRequestSourcePURCHASE captures enum value "PURCHASE"
	FulfillmentRequestSourcePURCHASE string = "PURCHASE"

	// FulfillmentRequestSourceREDEEMCODE captures enum value "REDEEM_CODE"
	FulfillmentRequestSourceREDEEMCODE string = "REDEEM_CODE"

	// FulfillmentRequestSourceREFERRALBONUS captures enum value "REFERRAL_BONUS"
	FulfillmentRequestSourceREFERRALBONUS string = "REFERRAL_BONUS"

	// FulfillmentRequestSourceREWARD captures enum value "REWARD"
	FulfillmentRequestSourceREWARD string = "REWARD"
)

// prop value enum
func (m *FulfillmentRequest) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentRequestTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentRequest) UnmarshalBinary(b []byte) error {
	var res FulfillmentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
