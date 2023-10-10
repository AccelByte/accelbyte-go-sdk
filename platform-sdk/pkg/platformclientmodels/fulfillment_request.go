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

	// metadata
	Metadata interface{} `json:"metadata,omitempty"`

	// order summary for fulfillment scripts
	Order *OrderSummary `json:"order,omitempty"`

	// orderNo
	OrderNo string `json:"orderNo,omitempty"`

	// origin
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	Origin string `json:"origin,omitempty"`

	// overrideBundleItemQty
	OverrideBundleItemQty map[string]int32 `json:"overrideBundleItemQty,omitempty"`

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
	if err := json.Unmarshal([]byte(`["ACHIEVEMENT", "CONSUME_ENTITLEMENT", "DLC", "EXPIRATION", "GIFT", "IAP", "IAP_CHARGEBACK_REVERSED", "ORDER_REVOCATION", "OTHER", "PAYMENT", "PROMOTION", "PURCHASE", "REDEEM_CODE", "REFERRAL_BONUS", "REWARD", "SELL_BACK"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentRequestTypeSourcePropEnum = append(fulfillmentRequestTypeSourcePropEnum, v)
	}
}

const (

	// FulfillmentRequestSourceACHIEVEMENT captures enum value "ACHIEVEMENT"
	FulfillmentRequestSourceACHIEVEMENT string = "ACHIEVEMENT"

	// FulfillmentRequestSourceCONSUMEENTITLEMENT captures enum value "CONSUME_ENTITLEMENT"
	FulfillmentRequestSourceCONSUMEENTITLEMENT string = "CONSUME_ENTITLEMENT"

	// FulfillmentRequestSourceDLC captures enum value "DLC"
	FulfillmentRequestSourceDLC string = "DLC"

	// FulfillmentRequestSourceEXPIRATION captures enum value "EXPIRATION"
	FulfillmentRequestSourceEXPIRATION string = "EXPIRATION"

	// FulfillmentRequestSourceGIFT captures enum value "GIFT"
	FulfillmentRequestSourceGIFT string = "GIFT"

	// FulfillmentRequestSourceIAP captures enum value "IAP"
	FulfillmentRequestSourceIAP string = "IAP"

	// FulfillmentRequestSourceIAPCHARGEBACKREVERSED captures enum value "IAP_CHARGEBACK_REVERSED"
	FulfillmentRequestSourceIAPCHARGEBACKREVERSED string = "IAP_CHARGEBACK_REVERSED"

	// FulfillmentRequestSourceORDERREVOCATION captures enum value "ORDER_REVOCATION"
	FulfillmentRequestSourceORDERREVOCATION string = "ORDER_REVOCATION"

	// FulfillmentRequestSourceOTHER captures enum value "OTHER"
	FulfillmentRequestSourceOTHER string = "OTHER"

	// FulfillmentRequestSourcePAYMENT captures enum value "PAYMENT"
	FulfillmentRequestSourcePAYMENT string = "PAYMENT"

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

	// FulfillmentRequestSourceSELLBACK captures enum value "SELL_BACK"
	FulfillmentRequestSourceSELLBACK string = "SELL_BACK"
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
