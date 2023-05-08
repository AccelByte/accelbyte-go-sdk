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

// FulfillmentItem Fulfillment item
//
// swagger:model Fulfillment item.
type FulfillmentItem struct {

	// extra subscription days
	// Format: int32
	ExtraSubscriptionDays int32 `json:"extraSubscriptionDays,omitempty"`

	// item id
	ItemID string `json:"itemId,omitempty"`

	// item name
	ItemName string `json:"itemName,omitempty"`

	// item sku
	ItemSku string `json:"itemSku,omitempty"`

	// item type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	ItemType string `json:"itemType,omitempty"`

	// quantity
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`

	// draft store id, published store if omitted
	StoreID string `json:"storeId,omitempty"`
}

// Validate validates this Fulfillment item
func (m *FulfillmentItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var fulfillmentItemTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentItemTypeItemTypePropEnum = append(fulfillmentItemTypeItemTypePropEnum, v)
	}
}

const (

	// FulfillmentItemItemTypeAPP captures enum value "APP"
	FulfillmentItemItemTypeAPP string = "APP"

	// FulfillmentItemItemTypeBUNDLE captures enum value "BUNDLE"
	FulfillmentItemItemTypeBUNDLE string = "BUNDLE"

	// FulfillmentItemItemTypeCODE captures enum value "CODE"
	FulfillmentItemItemTypeCODE string = "CODE"

	// FulfillmentItemItemTypeCOINS captures enum value "COINS"
	FulfillmentItemItemTypeCOINS string = "COINS"

	// FulfillmentItemItemTypeEXTENSION captures enum value "EXTENSION"
	FulfillmentItemItemTypeEXTENSION string = "EXTENSION"

	// FulfillmentItemItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	FulfillmentItemItemTypeINGAMEITEM string = "INGAMEITEM"

	// FulfillmentItemItemTypeLOOTBOX captures enum value "LOOTBOX"
	FulfillmentItemItemTypeLOOTBOX string = "LOOTBOX"

	// FulfillmentItemItemTypeMEDIA captures enum value "MEDIA"
	FulfillmentItemItemTypeMEDIA string = "MEDIA"

	// FulfillmentItemItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	FulfillmentItemItemTypeOPTIONBOX string = "OPTIONBOX"

	// FulfillmentItemItemTypeSEASON captures enum value "SEASON"
	FulfillmentItemItemTypeSEASON string = "SEASON"

	// FulfillmentItemItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	FulfillmentItemItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *FulfillmentItem) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentItemTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FulfillmentItem) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentItem) UnmarshalBinary(b []byte) error {
	var res FulfillmentItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
