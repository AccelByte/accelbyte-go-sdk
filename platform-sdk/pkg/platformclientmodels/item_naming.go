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

// ItemNaming Item naming
//
// swagger:model Item naming.
type ItemNaming struct {

	// Category Path
	CategoryPath string `json:"categoryPath,omitempty"`

	// Item id
	// Required: true
	ItemID *string `json:"itemId"`

	// Item type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	// Required: true
	ItemType *string `json:"itemType"`

	// Name
	// Required: true
	Name *string `json:"name"`

	// Item namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// season type
	// Enum: ['PASS', 'TIER']
	SeasonType string `json:"seasonType,omitempty"`

	// Sku
	Sku string `json:"sku,omitempty"`

	// status
	// Enum: ['ACTIVE', 'INACTIVE']
	Status string `json:"status,omitempty"`
}

// Validate validates this Item naming
func (m *ItemNaming) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ItemNaming) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

var itemNamingTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemNamingTypeItemTypePropEnum = append(itemNamingTypeItemTypePropEnum, v)
	}
}

const (

	// ItemNamingItemTypeAPP captures enum value "APP"
	ItemNamingItemTypeAPP string = "APP"

	// ItemNamingItemTypeBUNDLE captures enum value "BUNDLE"
	ItemNamingItemTypeBUNDLE string = "BUNDLE"

	// ItemNamingItemTypeCODE captures enum value "CODE"
	ItemNamingItemTypeCODE string = "CODE"

	// ItemNamingItemTypeCOINS captures enum value "COINS"
	ItemNamingItemTypeCOINS string = "COINS"

	// ItemNamingItemTypeEXTENSION captures enum value "EXTENSION"
	ItemNamingItemTypeEXTENSION string = "EXTENSION"

	// ItemNamingItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ItemNamingItemTypeINGAMEITEM string = "INGAMEITEM"

	// ItemNamingItemTypeLOOTBOX captures enum value "LOOTBOX"
	ItemNamingItemTypeLOOTBOX string = "LOOTBOX"

	// ItemNamingItemTypeMEDIA captures enum value "MEDIA"
	ItemNamingItemTypeMEDIA string = "MEDIA"

	// ItemNamingItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	ItemNamingItemTypeOPTIONBOX string = "OPTIONBOX"

	// ItemNamingItemTypeSEASON captures enum value "SEASON"
	ItemNamingItemTypeSEASON string = "SEASON"

	// ItemNamingItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	ItemNamingItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *ItemNaming) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemNamingTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemNaming) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemTypeEnum("itemType", "body", *m.ItemType); err != nil {
		return err
	}

	return nil
}

func (m *ItemNaming) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ItemNaming) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var itemNamingTypeSeasonTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PASS", "TIER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemNamingTypeSeasonTypePropEnum = append(itemNamingTypeSeasonTypePropEnum, v)
	}
}

const (

	// ItemNamingSeasonTypePASS captures enum value "PASS"
	ItemNamingSeasonTypePASS string = "PASS"

	// ItemNamingSeasonTypeTIER captures enum value "TIER"
	ItemNamingSeasonTypeTIER string = "TIER"
)

// prop value enum
func (m *ItemNaming) validateSeasonTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemNamingTypeSeasonTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var itemNamingTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemNamingTypeStatusPropEnum = append(itemNamingTypeStatusPropEnum, v)
	}
}

const (

	// ItemNamingStatusACTIVE captures enum value "ACTIVE"
	ItemNamingStatusACTIVE string = "ACTIVE"

	// ItemNamingStatusINACTIVE captures enum value "INACTIVE"
	ItemNamingStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *ItemNaming) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemNamingTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ItemNaming) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemNaming) UnmarshalBinary(b []byte) error {
	var res ItemNaming
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
