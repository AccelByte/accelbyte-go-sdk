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

// ImportStoreItemInfo Import store item info
//
// swagger:model Import store item info.
type ImportStoreItemInfo struct {

	// Item category path
	CategoryPath string `json:"categoryPath,omitempty"`

	// Item id
	ItemID string `json:"itemId,omitempty"`

	// Item type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	// Required: true
	ItemType *string `json:"itemType"`

	// Item localizations
	Localizations map[string]Localization `json:"localizations,omitempty"`

	// Name
	Name string `json:"name,omitempty"`

	// Sku
	Sku string `json:"sku,omitempty"`
}

// Validate validates this Import store item info
func (m *ImportStoreItemInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItemType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var importStoreItemInfoTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		importStoreItemInfoTypeItemTypePropEnum = append(importStoreItemInfoTypeItemTypePropEnum, v)
	}
}

const (

	// ImportStoreItemInfoItemTypeAPP captures enum value "APP"
	ImportStoreItemInfoItemTypeAPP string = "APP"

	// ImportStoreItemInfoItemTypeBUNDLE captures enum value "BUNDLE"
	ImportStoreItemInfoItemTypeBUNDLE string = "BUNDLE"

	// ImportStoreItemInfoItemTypeCODE captures enum value "CODE"
	ImportStoreItemInfoItemTypeCODE string = "CODE"

	// ImportStoreItemInfoItemTypeCOINS captures enum value "COINS"
	ImportStoreItemInfoItemTypeCOINS string = "COINS"

	// ImportStoreItemInfoItemTypeEXTENSION captures enum value "EXTENSION"
	ImportStoreItemInfoItemTypeEXTENSION string = "EXTENSION"

	// ImportStoreItemInfoItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ImportStoreItemInfoItemTypeINGAMEITEM string = "INGAMEITEM"

	// ImportStoreItemInfoItemTypeLOOTBOX captures enum value "LOOTBOX"
	ImportStoreItemInfoItemTypeLOOTBOX string = "LOOTBOX"

	// ImportStoreItemInfoItemTypeMEDIA captures enum value "MEDIA"
	ImportStoreItemInfoItemTypeMEDIA string = "MEDIA"

	// ImportStoreItemInfoItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	ImportStoreItemInfoItemTypeOPTIONBOX string = "OPTIONBOX"

	// ImportStoreItemInfoItemTypeSEASON captures enum value "SEASON"
	ImportStoreItemInfoItemTypeSEASON string = "SEASON"

	// ImportStoreItemInfoItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	ImportStoreItemInfoItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *ImportStoreItemInfo) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, importStoreItemInfoTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ImportStoreItemInfo) validateItemType(formats strfmt.Registry) error {

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
func (m *ImportStoreItemInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ImportStoreItemInfo) UnmarshalBinary(b []byte) error {
	var res ImportStoreItemInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
