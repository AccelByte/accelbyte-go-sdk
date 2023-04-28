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

// ItemTypeConfigCreate Item type config create
//
// swagger:model Item type config create.
type ItemTypeConfigCreate struct {

	// customized item clazz
	Clazz string `json:"clazz,omitempty"`

	// mock workflow while set true, default false
	DryRun bool `json:"dryRun"`

	// url to send the fulfillment notification
	// Required: true
	FulfillmentURL *string `json:"fulfillmentUrl"`

	// Item Type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	// Required: true
	ItemType *string `json:"itemType"`

	// url to check if the item is purchasable
	PurchaseConditionURL string `json:"purchaseConditionUrl,omitempty"`
}

// Validate validates this Item type config create
func (m *ItemTypeConfigCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFulfillmentURL(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ItemTypeConfigCreate) validateFulfillmentURL(formats strfmt.Registry) error {

	if err := validate.Required("fulfillmentUrl", "body", m.FulfillmentURL); err != nil {
		return err
	}

	return nil
}

var itemTypeConfigCreateTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemTypeConfigCreateTypeItemTypePropEnum = append(itemTypeConfigCreateTypeItemTypePropEnum, v)
	}
}

const (

	// ItemTypeConfigCreateItemTypeAPP captures enum value "APP"
	ItemTypeConfigCreateItemTypeAPP string = "APP"

	// ItemTypeConfigCreateItemTypeBUNDLE captures enum value "BUNDLE"
	ItemTypeConfigCreateItemTypeBUNDLE string = "BUNDLE"

	// ItemTypeConfigCreateItemTypeCODE captures enum value "CODE"
	ItemTypeConfigCreateItemTypeCODE string = "CODE"

	// ItemTypeConfigCreateItemTypeCOINS captures enum value "COINS"
	ItemTypeConfigCreateItemTypeCOINS string = "COINS"

	// ItemTypeConfigCreateItemTypeEXTENSION captures enum value "EXTENSION"
	ItemTypeConfigCreateItemTypeEXTENSION string = "EXTENSION"

	// ItemTypeConfigCreateItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ItemTypeConfigCreateItemTypeINGAMEITEM string = "INGAMEITEM"

	// ItemTypeConfigCreateItemTypeLOOTBOX captures enum value "LOOTBOX"
	ItemTypeConfigCreateItemTypeLOOTBOX string = "LOOTBOX"

	// ItemTypeConfigCreateItemTypeMEDIA captures enum value "MEDIA"
	ItemTypeConfigCreateItemTypeMEDIA string = "MEDIA"

	// ItemTypeConfigCreateItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	ItemTypeConfigCreateItemTypeOPTIONBOX string = "OPTIONBOX"

	// ItemTypeConfigCreateItemTypeSEASON captures enum value "SEASON"
	ItemTypeConfigCreateItemTypeSEASON string = "SEASON"

	// ItemTypeConfigCreateItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	ItemTypeConfigCreateItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *ItemTypeConfigCreate) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemTypeConfigCreateTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemTypeConfigCreate) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemTypeEnum("itemType", "body", *m.ItemType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ItemTypeConfigCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemTypeConfigCreate) UnmarshalBinary(b []byte) error {
	var res ItemTypeConfigCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
