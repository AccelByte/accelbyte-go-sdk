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

// ItemUpdate Item update
//
// swagger:model Item update.
type ItemUpdate struct {

	// appId, required if appType is present, alpha numeric, max length is 255
	AppID string `json:"appId,omitempty"`

	// appType
	// Enum: ['DEMO', 'DLC', 'GAME', 'SOFTWARE']
	AppType string `json:"appType,omitempty"`

	// baseAppId, can set value of game appId if want to link to a game
	BaseAppID string `json:"baseAppId,omitempty"`

	// booth name to get tickets while ItemType is CODE, Campaign or KeyGroup should located in targetNamespace if targetNamespace not null
	BoothName string `json:"boothName,omitempty"`

	// Category Path, A path separated by "/", will not show in store if it set to blank, max length is 255
	CategoryPath string `json:"categoryPath,omitempty"`

	// customized item clazz
	Clazz string `json:"clazz,omitempty"`

	// display order
	// Format: int32
	DisplayOrder int32 `json:"displayOrder,omitempty"`

	// Entitlement Type
	// Enum: ['CONSUMABLE', 'DURABLE']
	// Required: true
	EntitlementType *string `json:"entitlementType"`

	// customized item properties
	Ext interface{} `json:"ext,omitempty"`

	// Features, allowed characters from a-zA-Z0-9_:- and start/end in alphanumeric with length range from 1 to 127
	// Unique: true
	Features []string `json:"features"`

	// images
	Images []*Image `json:"images,omitempty"`

	// itemIds, should be empty if item type is not "BUNDLE"
	ItemIds []string `json:"itemIds,omitempty"`

	// itemQty, the quantity of item in itemIds, default 1, should be empty if item type is not "BUNDLE"
	ItemQty map[string]int32 `json:"itemQty,omitempty"`

	// Item Type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	// Required: true
	ItemType *string `json:"itemType"`

	// Whether can be visible in Store for public user
	Listable bool `json:"listable"`

	// Localization, key language, value localization content
	Localizations map[string]Localization `json:"localizations,omitempty"`

	// loot box config, should be empty if item type is not "LOOTBOX"
	LootBoxConfig *LootBoxConfig `json:"lootBoxConfig,omitempty"`

	// Max count, -1 means UNLIMITED, new value should >= old value if both old value and new value is limited, unset when itemType is CODE
	// Format: int32
	MaxCount int32 `json:"maxCount,omitempty"`

	// Max count per user, -1 means UNLIMITED
	// Format: int32
	MaxCountPerUser int32 `json:"maxCountPerUser,omitempty"`

	// Name
	Name string `json:"name,omitempty"`

	// option box config, should be empty if item type is not "OPTIONBOX"
	OptionBoxConfig *OptionBoxConfig `json:"optionBoxConfig,omitempty"`

	// Whether can be purchased
	Purchasable bool `json:"purchasable"`

	// recurring for subscription
	Recurring *Recurring `json:"recurring,omitempty"`

	// region data map, key is region, value is region data list
	RegionData map[string][]RegionDataItemDTO `json:"regionData,omitempty"`

	// sale config, required if sellable is true
	SaleConfig *SaleConfig `json:"saleConfig,omitempty"`

	// seasonType
	// Enum: ['PASS', 'TIER']
	SeasonType string `json:"seasonType,omitempty"`

	// Whether this item is sold in section only
	SectionExclusive bool `json:"sectionExclusive"`

	// sellable, whether allow to sell back to store
	Sellable bool `json:"sellable"`

	// sku, allowed characters from a-zA-Z0-9_:- and start/end in alphanumeric, max length is 127
	Sku string `json:"sku,omitempty"`

	// Whether to stack the entitlement when entitlement type is "CONSUMABLE"
	Stackable bool `json:"stackable"`

	// status
	// Enum: ['ACTIVE', 'INACTIVE']
	Status string `json:"status,omitempty"`

	// Tags, allowed characters from a-zA-Z0-9:_- with length range from 1 to 30, should start and end in upper/lowercase/number, an item has max 5 tags.
	// Unique: true
	Tags []string `json:"tags"`

	// target currency code, required if item type is "COINS"
	TargetCurrencyCode string `json:"targetCurrencyCode,omitempty"`

	// target namespace, require when sell a game's item on the publisher namespace
	TargetNamespace string `json:"targetNamespace,omitempty"`

	// thumbnail Url
	ThumbnailURL string `json:"thumbnailUrl,omitempty"`

	// Represent entitlement count when entitlement type is "CONSUMABLE", and represent coin count when itemType is "COINS"
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Item update
func (m *ItemUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEntitlementType(formats); err != nil {
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

var itemUpdateTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemUpdateTypeAppTypePropEnum = append(itemUpdateTypeAppTypePropEnum, v)
	}
}

const (

	// ItemUpdateAppTypeDEMO captures enum value "DEMO"
	ItemUpdateAppTypeDEMO string = "DEMO"

	// ItemUpdateAppTypeDLC captures enum value "DLC"
	ItemUpdateAppTypeDLC string = "DLC"

	// ItemUpdateAppTypeGAME captures enum value "GAME"
	ItemUpdateAppTypeGAME string = "GAME"

	// ItemUpdateAppTypeSOFTWARE captures enum value "SOFTWARE"
	ItemUpdateAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *ItemUpdate) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemUpdateTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var itemUpdateTypeEntitlementTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemUpdateTypeEntitlementTypePropEnum = append(itemUpdateTypeEntitlementTypePropEnum, v)
	}
}

const (

	// ItemUpdateEntitlementTypeCONSUMABLE captures enum value "CONSUMABLE"
	ItemUpdateEntitlementTypeCONSUMABLE string = "CONSUMABLE"

	// ItemUpdateEntitlementTypeDURABLE captures enum value "DURABLE"
	ItemUpdateEntitlementTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *ItemUpdate) validateEntitlementTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemUpdateTypeEntitlementTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemUpdate) validateEntitlementType(formats strfmt.Registry) error {

	if err := validate.Required("entitlementType", "body", m.EntitlementType); err != nil {
		return err
	}

	// value enum
	if err := m.validateEntitlementTypeEnum("entitlementType", "body", *m.EntitlementType); err != nil {
		return err
	}

	return nil
}

var itemUpdateTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemUpdateTypeItemTypePropEnum = append(itemUpdateTypeItemTypePropEnum, v)
	}
}

const (

	// ItemUpdateItemTypeAPP captures enum value "APP"
	ItemUpdateItemTypeAPP string = "APP"

	// ItemUpdateItemTypeBUNDLE captures enum value "BUNDLE"
	ItemUpdateItemTypeBUNDLE string = "BUNDLE"

	// ItemUpdateItemTypeCODE captures enum value "CODE"
	ItemUpdateItemTypeCODE string = "CODE"

	// ItemUpdateItemTypeCOINS captures enum value "COINS"
	ItemUpdateItemTypeCOINS string = "COINS"

	// ItemUpdateItemTypeEXTENSION captures enum value "EXTENSION"
	ItemUpdateItemTypeEXTENSION string = "EXTENSION"

	// ItemUpdateItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ItemUpdateItemTypeINGAMEITEM string = "INGAMEITEM"

	// ItemUpdateItemTypeLOOTBOX captures enum value "LOOTBOX"
	ItemUpdateItemTypeLOOTBOX string = "LOOTBOX"

	// ItemUpdateItemTypeMEDIA captures enum value "MEDIA"
	ItemUpdateItemTypeMEDIA string = "MEDIA"

	// ItemUpdateItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	ItemUpdateItemTypeOPTIONBOX string = "OPTIONBOX"

	// ItemUpdateItemTypeSEASON captures enum value "SEASON"
	ItemUpdateItemTypeSEASON string = "SEASON"

	// ItemUpdateItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	ItemUpdateItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *ItemUpdate) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemUpdateTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemUpdate) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemTypeEnum("itemType", "body", *m.ItemType); err != nil {
		return err
	}

	return nil
}

var itemUpdateTypeSeasonTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PASS", "TIER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemUpdateTypeSeasonTypePropEnum = append(itemUpdateTypeSeasonTypePropEnum, v)
	}
}

const (

	// ItemUpdateSeasonTypePASS captures enum value "PASS"
	ItemUpdateSeasonTypePASS string = "PASS"

	// ItemUpdateSeasonTypeTIER captures enum value "TIER"
	ItemUpdateSeasonTypeTIER string = "TIER"
)

// prop value enum
func (m *ItemUpdate) validateSeasonTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemUpdateTypeSeasonTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var itemUpdateTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemUpdateTypeStatusPropEnum = append(itemUpdateTypeStatusPropEnum, v)
	}
}

const (

	// ItemUpdateStatusACTIVE captures enum value "ACTIVE"
	ItemUpdateStatusACTIVE string = "ACTIVE"

	// ItemUpdateStatusINACTIVE captures enum value "INACTIVE"
	ItemUpdateStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *ItemUpdate) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemUpdateTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ItemUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemUpdate) UnmarshalBinary(b []byte) error {
	var res ItemUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
