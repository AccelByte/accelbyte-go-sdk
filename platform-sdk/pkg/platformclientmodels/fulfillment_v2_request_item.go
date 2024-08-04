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

// FulfillmentV2RequestItem Fulfillment V2 request item
//
// swagger:model Fulfillment V2 request item.
type FulfillmentV2RequestItem struct {

	// duration in seconds, ignored if the endDate is present
	// Format: int32
	Duration int32 `json:"duration,omitempty"`

	// end date time
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// entitlement collection id, length 1-128
	EntitlementCollectionID string `json:"entitlementCollectionId,omitempty"`

	// entitlement origin
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	EntitlementOrigin string `json:"entitlementOrigin,omitempty"`

	// itemId
	ItemID string `json:"itemId,omitempty"`

	// itemSku
	ItemSku string `json:"itemSku,omitempty"`

	// language
	Language string `json:"language,omitempty"`

	// metadata
	Metadata interface{} `json:"metadata,omitempty"`

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
	// Enum: ['ACHIEVEMENT', 'CONSUME_ENTITLEMENT', 'DLC', 'EXPIRATION', 'GIFT', 'IAP', 'IAP_CHARGEBACK_REVERSED', 'ORDER_REVOCATION', 'OTHER', 'PAYMENT', 'PROMOTION', 'PURCHASE', 'REDEEM_CODE', 'REFERRAL_BONUS', 'REWARD', 'SELL_BACK']
	Source string `json:"source,omitempty"`

	// start date time
	// Format: date-time
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`

	// storeId
	StoreID string `json:"storeId,omitempty"`
}

// Validate validates this Fulfillment V2 request item
func (m *FulfillmentV2RequestItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var fulfillmentV2RequestItemTypeEntitlementOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentV2RequestItemTypeEntitlementOriginPropEnum = append(fulfillmentV2RequestItemTypeEntitlementOriginPropEnum, v)
	}
}

const (

	// FulfillmentV2RequestItemEntitlementOriginEPIC captures enum value "EPIC"
	FulfillmentV2RequestItemEntitlementOriginEPIC string = "EPIC"

	// FulfillmentV2RequestItemEntitlementOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	FulfillmentV2RequestItemEntitlementOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// FulfillmentV2RequestItemEntitlementOriginIOS captures enum value "IOS"
	FulfillmentV2RequestItemEntitlementOriginIOS string = "IOS"

	// FulfillmentV2RequestItemEntitlementOriginNINTENDO captures enum value "NINTENDO"
	FulfillmentV2RequestItemEntitlementOriginNINTENDO string = "NINTENDO"

	// FulfillmentV2RequestItemEntitlementOriginOCULUS captures enum value "OCULUS"
	FulfillmentV2RequestItemEntitlementOriginOCULUS string = "OCULUS"

	// FulfillmentV2RequestItemEntitlementOriginOTHER captures enum value "OTHER"
	FulfillmentV2RequestItemEntitlementOriginOTHER string = "OTHER"

	// FulfillmentV2RequestItemEntitlementOriginPLAYSTATION captures enum value "PLAYSTATION"
	FulfillmentV2RequestItemEntitlementOriginPLAYSTATION string = "PLAYSTATION"

	// FulfillmentV2RequestItemEntitlementOriginSTEAM captures enum value "STEAM"
	FulfillmentV2RequestItemEntitlementOriginSTEAM string = "STEAM"

	// FulfillmentV2RequestItemEntitlementOriginSYSTEM captures enum value "SYSTEM"
	FulfillmentV2RequestItemEntitlementOriginSYSTEM string = "SYSTEM"

	// FulfillmentV2RequestItemEntitlementOriginTWITCH captures enum value "TWITCH"
	FulfillmentV2RequestItemEntitlementOriginTWITCH string = "TWITCH"

	// FulfillmentV2RequestItemEntitlementOriginXBOX captures enum value "XBOX"
	FulfillmentV2RequestItemEntitlementOriginXBOX string = "XBOX"
)

// prop value enum
func (m *FulfillmentV2RequestItem) validateEntitlementOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentV2RequestItemTypeEntitlementOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

var fulfillmentV2RequestItemTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentV2RequestItemTypeOriginPropEnum = append(fulfillmentV2RequestItemTypeOriginPropEnum, v)
	}
}

const (

	// FulfillmentV2RequestItemOriginEPIC captures enum value "EPIC"
	FulfillmentV2RequestItemOriginEPIC string = "EPIC"

	// FulfillmentV2RequestItemOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	FulfillmentV2RequestItemOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// FulfillmentV2RequestItemOriginIOS captures enum value "IOS"
	FulfillmentV2RequestItemOriginIOS string = "IOS"

	// FulfillmentV2RequestItemOriginNINTENDO captures enum value "NINTENDO"
	FulfillmentV2RequestItemOriginNINTENDO string = "NINTENDO"

	// FulfillmentV2RequestItemOriginOCULUS captures enum value "OCULUS"
	FulfillmentV2RequestItemOriginOCULUS string = "OCULUS"

	// FulfillmentV2RequestItemOriginOTHER captures enum value "OTHER"
	FulfillmentV2RequestItemOriginOTHER string = "OTHER"

	// FulfillmentV2RequestItemOriginPLAYSTATION captures enum value "PLAYSTATION"
	FulfillmentV2RequestItemOriginPLAYSTATION string = "PLAYSTATION"

	// FulfillmentV2RequestItemOriginSTEAM captures enum value "STEAM"
	FulfillmentV2RequestItemOriginSTEAM string = "STEAM"

	// FulfillmentV2RequestItemOriginSYSTEM captures enum value "SYSTEM"
	FulfillmentV2RequestItemOriginSYSTEM string = "SYSTEM"

	// FulfillmentV2RequestItemOriginTWITCH captures enum value "TWITCH"
	FulfillmentV2RequestItemOriginTWITCH string = "TWITCH"

	// FulfillmentV2RequestItemOriginXBOX captures enum value "XBOX"
	FulfillmentV2RequestItemOriginXBOX string = "XBOX"
)

// prop value enum
func (m *FulfillmentV2RequestItem) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentV2RequestItemTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FulfillmentV2RequestItem) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

var fulfillmentV2RequestItemTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACHIEVEMENT", "CONSUME_ENTITLEMENT", "DLC", "EXPIRATION", "GIFT", "IAP", "IAP_CHARGEBACK_REVERSED", "ORDER_REVOCATION", "OTHER", "PAYMENT", "PROMOTION", "PURCHASE", "REDEEM_CODE", "REFERRAL_BONUS", "REWARD", "SELL_BACK"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentV2RequestItemTypeSourcePropEnum = append(fulfillmentV2RequestItemTypeSourcePropEnum, v)
	}
}

const (

	// FulfillmentV2RequestItemSourceACHIEVEMENT captures enum value "ACHIEVEMENT"
	FulfillmentV2RequestItemSourceACHIEVEMENT string = "ACHIEVEMENT"

	// FulfillmentV2RequestItemSourceCONSUMEENTITLEMENT captures enum value "CONSUME_ENTITLEMENT"
	FulfillmentV2RequestItemSourceCONSUMEENTITLEMENT string = "CONSUME_ENTITLEMENT"

	// FulfillmentV2RequestItemSourceDLC captures enum value "DLC"
	FulfillmentV2RequestItemSourceDLC string = "DLC"

	// FulfillmentV2RequestItemSourceEXPIRATION captures enum value "EXPIRATION"
	FulfillmentV2RequestItemSourceEXPIRATION string = "EXPIRATION"

	// FulfillmentV2RequestItemSourceGIFT captures enum value "GIFT"
	FulfillmentV2RequestItemSourceGIFT string = "GIFT"

	// FulfillmentV2RequestItemSourceIAP captures enum value "IAP"
	FulfillmentV2RequestItemSourceIAP string = "IAP"

	// FulfillmentV2RequestItemSourceIAPCHARGEBACKREVERSED captures enum value "IAP_CHARGEBACK_REVERSED"
	FulfillmentV2RequestItemSourceIAPCHARGEBACKREVERSED string = "IAP_CHARGEBACK_REVERSED"

	// FulfillmentV2RequestItemSourceORDERREVOCATION captures enum value "ORDER_REVOCATION"
	FulfillmentV2RequestItemSourceORDERREVOCATION string = "ORDER_REVOCATION"

	// FulfillmentV2RequestItemSourceOTHER captures enum value "OTHER"
	FulfillmentV2RequestItemSourceOTHER string = "OTHER"

	// FulfillmentV2RequestItemSourcePAYMENT captures enum value "PAYMENT"
	FulfillmentV2RequestItemSourcePAYMENT string = "PAYMENT"

	// FulfillmentV2RequestItemSourcePROMOTION captures enum value "PROMOTION"
	FulfillmentV2RequestItemSourcePROMOTION string = "PROMOTION"

	// FulfillmentV2RequestItemSourcePURCHASE captures enum value "PURCHASE"
	FulfillmentV2RequestItemSourcePURCHASE string = "PURCHASE"

	// FulfillmentV2RequestItemSourceREDEEMCODE captures enum value "REDEEM_CODE"
	FulfillmentV2RequestItemSourceREDEEMCODE string = "REDEEM_CODE"

	// FulfillmentV2RequestItemSourceREFERRALBONUS captures enum value "REFERRAL_BONUS"
	FulfillmentV2RequestItemSourceREFERRALBONUS string = "REFERRAL_BONUS"

	// FulfillmentV2RequestItemSourceREWARD captures enum value "REWARD"
	FulfillmentV2RequestItemSourceREWARD string = "REWARD"

	// FulfillmentV2RequestItemSourceSELLBACK captures enum value "SELL_BACK"
	FulfillmentV2RequestItemSourceSELLBACK string = "SELL_BACK"
)

// prop value enum
func (m *FulfillmentV2RequestItem) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentV2RequestItemTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentV2RequestItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentV2RequestItem) UnmarshalBinary(b []byte) error {
	var res FulfillmentV2RequestItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
