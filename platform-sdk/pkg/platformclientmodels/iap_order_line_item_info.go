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

// IAPOrderLineItemInfo IAP order line item info
//
// swagger:model IAP order line item info.
type IAPOrderLineItemInfo struct {

	// The total cost of the item to the user excluding VAT (in cents).
	// Format: int64
	Amount int64 `json:"amount,omitempty"`

	// The AGS In-App Purchase (IAP) order number.
	IAPOrderNo string `json:"iapOrderNo,omitempty"`

	// The unique identifier for the order.
	ID string `json:"id,omitempty"`

	// The AGS item identifier for the order.
	ItemIdentity string `json:"itemIdentity,omitempty"`

	// The type of item identity (e.g., SKU, product ID).
	// Enum: ['ITEM_ID', 'ITEM_SKU']
	ItemIdentityType string `json:"itemIdentityType,omitempty"`

	// The result of the last fulfillment attempt.
	LastFulfillmentV2Result *FulfillmentV2Result `json:"lastFulfillmentV2Result,omitempty"`

	// The result of the last attempt to revoke fulfillment.
	LastRevokeFulfillmentV2Result *RevokeFulfillmentV2Result `json:"lastRevokeFulfillmentV2Result,omitempty"`

	// The unique identifier for the item within the order, for steam, it's array index
	LineItemID string `json:"lineItemId,omitempty"`

	// The namespace representing the AGS namespace.
	Namespace string `json:"namespace,omitempty"`

	// The platform on which the order was placed (STEAM, etc.)
	// Enum: ['STEAM']
	Platform string `json:"platform,omitempty"`

	// The quantity of the item ordered.
	// Format: int64
	Qty int64 `json:"qty,omitempty"`

	// Flag to determine if the order is placed in a sandbox (test) environment.
	Sandbox bool `json:"sandbox"`

	// The status of the order.
	// Enum: ['FULFILLED', 'VERIFIED']
	Status string `json:"status,omitempty"`

	// A reason or explanation for the current status of the order.
	StatusReason string `json:"statusReason,omitempty"`

	// The third-party item identifier related to the order.
	ThirdPartyItemID string `json:"thirdPartyItemId,omitempty"`

	// The third-party order identifier related to the IAP (In-App Purchase) transaction.
	ThirdPartyOrderID string `json:"thirdPartyOrderId,omitempty"`

	// The unique identifier of the AGS user.
	UserID string `json:"userId,omitempty"`

	// The VAT or tax amount (in cents).
	// Format: int64
	Vat int64 `json:"vat,omitempty"`
}

// Validate validates this IAP order line item info
func (m *IAPOrderLineItemInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var iapOrderLineItemInfoTypeItemIdentityTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM_ID", "ITEM_SKU"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapOrderLineItemInfoTypeItemIdentityTypePropEnum = append(iapOrderLineItemInfoTypeItemIdentityTypePropEnum, v)
	}
}

const (

	// IAPOrderLineItemInfoItemIdentityTypeITEMID captures enum value "ITEM_ID"
	IAPOrderLineItemInfoItemIdentityTypeITEMID string = "ITEM_ID"

	// IAPOrderLineItemInfoItemIdentityTypeITEMSKU captures enum value "ITEM_SKU"
	IAPOrderLineItemInfoItemIdentityTypeITEMSKU string = "ITEM_SKU"
)

// prop value enum
func (m *IAPOrderLineItemInfo) validateItemIdentityTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapOrderLineItemInfoTypeItemIdentityTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var iapOrderLineItemInfoTypePlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["STEAM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapOrderLineItemInfoTypePlatformPropEnum = append(iapOrderLineItemInfoTypePlatformPropEnum, v)
	}
}

const (

	// IAPOrderLineItemInfoPlatformSTEAM captures enum value "STEAM"
	IAPOrderLineItemInfoPlatformSTEAM string = "STEAM"
)

// prop value enum
func (m *IAPOrderLineItemInfo) validatePlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapOrderLineItemInfoTypePlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

var iapOrderLineItemInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FULFILLED", "VERIFIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapOrderLineItemInfoTypeStatusPropEnum = append(iapOrderLineItemInfoTypeStatusPropEnum, v)
	}
}

const (

	// IAPOrderLineItemInfoStatusFULFILLED captures enum value "FULFILLED"
	IAPOrderLineItemInfoStatusFULFILLED string = "FULFILLED"

	// IAPOrderLineItemInfoStatusVERIFIED captures enum value "VERIFIED"
	IAPOrderLineItemInfoStatusVERIFIED string = "VERIFIED"
)

// prop value enum
func (m *IAPOrderLineItemInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapOrderLineItemInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *IAPOrderLineItemInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *IAPOrderLineItemInfo) UnmarshalBinary(b []byte) error {
	var res IAPOrderLineItemInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
