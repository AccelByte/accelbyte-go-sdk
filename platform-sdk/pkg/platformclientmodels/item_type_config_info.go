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

// ItemTypeConfigInfo Item type config info
//
// swagger:model Item type config info.
type ItemTypeConfigInfo struct {

	// customized item clazz
	Clazz string `json:"clazz,omitempty"`

	// created time
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// mock workflow while set true, default false
	DryRun bool `json:"dryRun"`

	// url to send the fulfillment notification
	// Required: true
	FulfillmentURL *string `json:"fulfillmentUrl"`

	// Item type config id
	// Required: true
	ID *string `json:"id"`

	// Item type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	// Required: true
	ItemType *string `json:"itemType"`

	// url to check if the item is purchasable
	PurchaseConditionURL string `json:"purchaseConditionUrl,omitempty"`

	// updated time
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Item type config info
func (m *ItemTypeConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFulfillmentURL(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ItemTypeConfigInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ItemTypeConfigInfo) validateFulfillmentURL(formats strfmt.Registry) error {

	if err := validate.Required("fulfillmentUrl", "body", m.FulfillmentURL); err != nil {
		return err
	}

	return nil
}

func (m *ItemTypeConfigInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

var itemTypeConfigInfoTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemTypeConfigInfoTypeItemTypePropEnum = append(itemTypeConfigInfoTypeItemTypePropEnum, v)
	}
}

const (

	// ItemTypeConfigInfoItemTypeAPP captures enum value "APP"
	ItemTypeConfigInfoItemTypeAPP string = "APP"

	// ItemTypeConfigInfoItemTypeBUNDLE captures enum value "BUNDLE"
	ItemTypeConfigInfoItemTypeBUNDLE string = "BUNDLE"

	// ItemTypeConfigInfoItemTypeCODE captures enum value "CODE"
	ItemTypeConfigInfoItemTypeCODE string = "CODE"

	// ItemTypeConfigInfoItemTypeCOINS captures enum value "COINS"
	ItemTypeConfigInfoItemTypeCOINS string = "COINS"

	// ItemTypeConfigInfoItemTypeEXTENSION captures enum value "EXTENSION"
	ItemTypeConfigInfoItemTypeEXTENSION string = "EXTENSION"

	// ItemTypeConfigInfoItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ItemTypeConfigInfoItemTypeINGAMEITEM string = "INGAMEITEM"

	// ItemTypeConfigInfoItemTypeLOOTBOX captures enum value "LOOTBOX"
	ItemTypeConfigInfoItemTypeLOOTBOX string = "LOOTBOX"

	// ItemTypeConfigInfoItemTypeMEDIA captures enum value "MEDIA"
	ItemTypeConfigInfoItemTypeMEDIA string = "MEDIA"

	// ItemTypeConfigInfoItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	ItemTypeConfigInfoItemTypeOPTIONBOX string = "OPTIONBOX"

	// ItemTypeConfigInfoItemTypeSEASON captures enum value "SEASON"
	ItemTypeConfigInfoItemTypeSEASON string = "SEASON"

	// ItemTypeConfigInfoItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	ItemTypeConfigInfoItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *ItemTypeConfigInfo) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemTypeConfigInfoTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemTypeConfigInfo) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemTypeEnum("itemType", "body", *m.ItemType); err != nil {
		return err
	}

	return nil
}

func (m *ItemTypeConfigInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ItemTypeConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemTypeConfigInfo) UnmarshalBinary(b []byte) error {
	var res ItemTypeConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
