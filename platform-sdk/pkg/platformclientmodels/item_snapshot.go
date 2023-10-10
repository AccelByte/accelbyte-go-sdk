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

// ItemSnapshot Item snapshot
//
// swagger:model Item snapshot.
type ItemSnapshot struct {

	// App id, required when itemType is APP
	AppID string `json:"appId,omitempty"`

	// App type, required when itemType is APP
	// Enum: ['DEMO', 'DLC', 'GAME', 'SOFTWARE']
	AppType string `json:"appType,omitempty"`

	// Base app Id
	BaseAppID string `json:"baseAppId,omitempty"`

	// booth name to get tickets while it's item type is CODE
	BoothName string `json:"boothName,omitempty"`

	// createdAt
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// Entitlement type
	// Enum: ['CONSUMABLE', 'DURABLE']
	// Required: true
	EntitlementType *string `json:"entitlementType"`

	// supported features
	// Unique: true
	Features []string `json:"features"`

	// whether flexible pricing applied, only applied if itemType is BUNDLE
	Flexible bool `json:"flexible"`

	// Item id
	// Required: true
	ItemID *string `json:"itemId"`

	// itemIds, should be empty if item type is not "BUNDLE"
	ItemIds []string `json:"itemIds,omitempty"`

	// itemQty, the quantity of item in itemIds, default 1, should be empty if item type is not "BUNDLE"
	ItemQty map[string]int32 `json:"itemQty,omitempty"`

	// Item type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	// Required: true
	ItemType *string `json:"itemType"`

	// language
	// Required: true
	Language *string `json:"language"`

	// Whether can be visible in Store for public user
	Listable bool `json:"listable"`

	// loot box config
	LootBoxConfig *LootBoxConfig `json:"lootBoxConfig,omitempty"`

	// Max count, -1 means UNLIMITED, unset when itemType is CODE
	// Format: int32
	MaxCount int32 `json:"maxCount,omitempty"`

	// Max count per user, -1 means UNLIMITED
	// Format: int32
	MaxCountPerUser int32 `json:"maxCountPerUser,omitempty"`

	// Name
	// Required: true
	Name *string `json:"name"`

	// Item's namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// option box config
	OptionBoxConfig *OptionBoxConfig `json:"optionBoxConfig,omitempty"`

	// Whether can be purchased
	Purchasable bool `json:"purchasable"`

	// recurring for subscription
	Recurring *Recurring `json:"recurring,omitempty"`

	// region
	// Required: true
	Region *string `json:"region"`

	// Region data
	RegionDataItem *RegionDataItem `json:"regionDataItem,omitempty"`

	// sale config
	SaleConfig *SaleConfig `json:"saleConfig,omitempty"`

	// Season type, required while itemType is SEASON
	// Enum: ['PASS', 'TIER']
	SeasonType string `json:"seasonType,omitempty"`

	// whether it is sold in section only
	SectionExclusive bool `json:"sectionExclusive"`

	// whether allow to sell back to store
	Sellable bool `json:"sellable"`

	// Sku
	Sku string `json:"sku,omitempty"`

	// Whether stack the CONSUMABLE entitlement
	Stackable bool `json:"stackable"`

	// Target currency code of coin item
	TargetCurrencyCode string `json:"targetCurrencyCode,omitempty"`

	// Target item id of mapping from game namespace to publisher namespace
	TargetItemID string `json:"targetItemId,omitempty"`

	// The target namespace of a cross namespace item
	TargetNamespace string `json:"targetNamespace,omitempty"`

	// thumbnail url
	ThumbnailURL string `json:"thumbnailUrl,omitempty"`

	// title info
	// Required: true
	Title *string `json:"title"`

	// updatedAt
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// Item use count, required when entitlement type is consumable or itemType is COINS
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Item snapshot
func (m *ItemSnapshot) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEntitlementType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var itemSnapshotTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemSnapshotTypeAppTypePropEnum = append(itemSnapshotTypeAppTypePropEnum, v)
	}
}

const (

	// ItemSnapshotAppTypeDEMO captures enum value "DEMO"
	ItemSnapshotAppTypeDEMO string = "DEMO"

	// ItemSnapshotAppTypeDLC captures enum value "DLC"
	ItemSnapshotAppTypeDLC string = "DLC"

	// ItemSnapshotAppTypeGAME captures enum value "GAME"
	ItemSnapshotAppTypeGAME string = "GAME"

	// ItemSnapshotAppTypeSOFTWARE captures enum value "SOFTWARE"
	ItemSnapshotAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *ItemSnapshot) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemSnapshotTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var itemSnapshotTypeEntitlementTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemSnapshotTypeEntitlementTypePropEnum = append(itemSnapshotTypeEntitlementTypePropEnum, v)
	}
}

const (

	// ItemSnapshotEntitlementTypeCONSUMABLE captures enum value "CONSUMABLE"
	ItemSnapshotEntitlementTypeCONSUMABLE string = "CONSUMABLE"

	// ItemSnapshotEntitlementTypeDURABLE captures enum value "DURABLE"
	ItemSnapshotEntitlementTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *ItemSnapshot) validateEntitlementTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemSnapshotTypeEntitlementTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemSnapshot) validateEntitlementType(formats strfmt.Registry) error {

	if err := validate.Required("entitlementType", "body", m.EntitlementType); err != nil {
		return err
	}

	// value enum
	if err := m.validateEntitlementTypeEnum("entitlementType", "body", *m.EntitlementType); err != nil {
		return err
	}

	return nil
}

func (m *ItemSnapshot) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

var itemSnapshotTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemSnapshotTypeItemTypePropEnum = append(itemSnapshotTypeItemTypePropEnum, v)
	}
}

const (

	// ItemSnapshotItemTypeAPP captures enum value "APP"
	ItemSnapshotItemTypeAPP string = "APP"

	// ItemSnapshotItemTypeBUNDLE captures enum value "BUNDLE"
	ItemSnapshotItemTypeBUNDLE string = "BUNDLE"

	// ItemSnapshotItemTypeCODE captures enum value "CODE"
	ItemSnapshotItemTypeCODE string = "CODE"

	// ItemSnapshotItemTypeCOINS captures enum value "COINS"
	ItemSnapshotItemTypeCOINS string = "COINS"

	// ItemSnapshotItemTypeEXTENSION captures enum value "EXTENSION"
	ItemSnapshotItemTypeEXTENSION string = "EXTENSION"

	// ItemSnapshotItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ItemSnapshotItemTypeINGAMEITEM string = "INGAMEITEM"

	// ItemSnapshotItemTypeLOOTBOX captures enum value "LOOTBOX"
	ItemSnapshotItemTypeLOOTBOX string = "LOOTBOX"

	// ItemSnapshotItemTypeMEDIA captures enum value "MEDIA"
	ItemSnapshotItemTypeMEDIA string = "MEDIA"

	// ItemSnapshotItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	ItemSnapshotItemTypeOPTIONBOX string = "OPTIONBOX"

	// ItemSnapshotItemTypeSEASON captures enum value "SEASON"
	ItemSnapshotItemTypeSEASON string = "SEASON"

	// ItemSnapshotItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	ItemSnapshotItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *ItemSnapshot) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemSnapshotTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemSnapshot) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemTypeEnum("itemType", "body", *m.ItemType); err != nil {
		return err
	}

	return nil
}

func (m *ItemSnapshot) validateLanguage(formats strfmt.Registry) error {

	if err := validate.Required("language", "body", m.Language); err != nil {
		return err
	}

	return nil
}

func (m *ItemSnapshot) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ItemSnapshot) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ItemSnapshot) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

var itemSnapshotTypeSeasonTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PASS", "TIER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemSnapshotTypeSeasonTypePropEnum = append(itemSnapshotTypeSeasonTypePropEnum, v)
	}
}

const (

	// ItemSnapshotSeasonTypePASS captures enum value "PASS"
	ItemSnapshotSeasonTypePASS string = "PASS"

	// ItemSnapshotSeasonTypeTIER captures enum value "TIER"
	ItemSnapshotSeasonTypeTIER string = "TIER"
)

// prop value enum
func (m *ItemSnapshot) validateSeasonTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemSnapshotTypeSeasonTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemSnapshot) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ItemSnapshot) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemSnapshot) UnmarshalBinary(b []byte) error {
	var res ItemSnapshot
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
