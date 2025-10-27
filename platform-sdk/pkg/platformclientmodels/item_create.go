// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ItemCreate Item create
//
// swagger:model Item create.
type ItemCreate struct {

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
	// Required: true
	CategoryPath *string `json:"categoryPath"`

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

	// whether flexible pricing applied, only applied if itemType is BUNDLE
	Flexible bool `json:"flexible"`

	// images
	Images []*Image `json:"images,omitempty"`

	// inventory config
	InventoryConfig *InventoryConfig `json:"inventoryConfig,omitempty"`

	// Item ID (optional). UUID V4 without hyphen format
	ItemID string `json:"itemId,omitempty"`

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
	// Required: true
	Localizations map[string]Localization `json:"localizations"`

	// loot box config, should be empty if item type is not "LOOTBOX"
	LootBoxConfig *LootBoxConfig `json:"lootBoxConfig,omitempty"`

	// Max count, -1 means UNLIMITED, unset when itemType is CODE
	// Format: int32
	MaxCount int32 `json:"maxCount,omitempty"`

	// Max count per user, -1 means UNLIMITED
	// Format: int32
	MaxCountPerUser int32 `json:"maxCountPerUser,omitempty"`

	// Name, max length is 127
	// Required: true
	Name *string `json:"name"`

	// option box config, should be empty if item type is not "OPTIONBOX"
	OptionBoxConfig *OptionBoxConfig `json:"optionBoxConfig,omitempty"`

	// Whether can be purchased
	Purchasable bool `json:"purchasable"`

	// recurring for subscription
	Recurring *Recurring `json:"recurring,omitempty"`

	// region data map, key is region, value is region data list
	// Required: true
	RegionData map[string][]RegionDataItemDTO `json:"regionData"`

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
	// Required: true
	Status *string `json:"status"`

	// Tags, allowed characters from a-zA-Z0-9:_- with length range from 1 to 30, should start and end in upper/lowercase/number, an item has max 20 tags.
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

// Validate validates this Item create
func (m *ItemCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCategoryPath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEntitlementType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegionData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var itemCreateTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemCreateTypeAppTypePropEnum = append(itemCreateTypeAppTypePropEnum, v)
	}
}

const (

	// ItemCreateAppTypeDEMO captures enum value "DEMO"
	ItemCreateAppTypeDEMO string = "DEMO"

	// ItemCreateAppTypeDLC captures enum value "DLC"
	ItemCreateAppTypeDLC string = "DLC"

	// ItemCreateAppTypeGAME captures enum value "GAME"
	ItemCreateAppTypeGAME string = "GAME"

	// ItemCreateAppTypeSOFTWARE captures enum value "SOFTWARE"
	ItemCreateAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *ItemCreate) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemCreateTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemCreate) validateCategoryPath(formats strfmt.Registry) error {

	if err := validate.Required("categoryPath", "body", m.CategoryPath); err != nil {
		return err
	}

	return nil
}

var itemCreateTypeEntitlementTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemCreateTypeEntitlementTypePropEnum = append(itemCreateTypeEntitlementTypePropEnum, v)
	}
}

const (

	// ItemCreateEntitlementTypeCONSUMABLE captures enum value "CONSUMABLE"
	ItemCreateEntitlementTypeCONSUMABLE string = "CONSUMABLE"

	// ItemCreateEntitlementTypeDURABLE captures enum value "DURABLE"
	ItemCreateEntitlementTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *ItemCreate) validateEntitlementTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemCreateTypeEntitlementTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemCreate) validateEntitlementType(formats strfmt.Registry) error {

	if err := validate.Required("entitlementType", "body", m.EntitlementType); err != nil {
		return err
	}

	// value enum
	if err := m.validateEntitlementTypeEnum("entitlementType", "body", *m.EntitlementType); err != nil {
		return err
	}

	return nil
}

var itemCreateTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemCreateTypeItemTypePropEnum = append(itemCreateTypeItemTypePropEnum, v)
	}
}

const (

	// ItemCreateItemTypeAPP captures enum value "APP"
	ItemCreateItemTypeAPP string = "APP"

	// ItemCreateItemTypeBUNDLE captures enum value "BUNDLE"
	ItemCreateItemTypeBUNDLE string = "BUNDLE"

	// ItemCreateItemTypeCODE captures enum value "CODE"
	ItemCreateItemTypeCODE string = "CODE"

	// ItemCreateItemTypeCOINS captures enum value "COINS"
	ItemCreateItemTypeCOINS string = "COINS"

	// ItemCreateItemTypeEXTENSION captures enum value "EXTENSION"
	ItemCreateItemTypeEXTENSION string = "EXTENSION"

	// ItemCreateItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ItemCreateItemTypeINGAMEITEM string = "INGAMEITEM"

	// ItemCreateItemTypeLOOTBOX captures enum value "LOOTBOX"
	ItemCreateItemTypeLOOTBOX string = "LOOTBOX"

	// ItemCreateItemTypeMEDIA captures enum value "MEDIA"
	ItemCreateItemTypeMEDIA string = "MEDIA"

	// ItemCreateItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	ItemCreateItemTypeOPTIONBOX string = "OPTIONBOX"

	// ItemCreateItemTypeSEASON captures enum value "SEASON"
	ItemCreateItemTypeSEASON string = "SEASON"

	// ItemCreateItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	ItemCreateItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *ItemCreate) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemCreateTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemCreate) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemTypeEnum("itemType", "body", *m.ItemType); err != nil {
		return err
	}

	return nil
}

func (m *ItemCreate) validateLocalizations(formats strfmt.Registry) error {

	if err := validate.Required("localizations", "body", m.Localizations); err != nil {
		return err
	}

	for k := range m.Localizations {

		if err := validate.Required("localizations"+"."+k, "body", m.Localizations[k]); err != nil {
			return err
		}
		if val, ok := m.Localizations[k]; ok {
			if err := val.Validate(formats); err != nil {
				return err
			}
		}

	}

	return nil
}

func (m *ItemCreate) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ItemCreate) validateRegionData(formats strfmt.Registry) error {

	if err := validate.Required("regionData", "body", m.RegionData); err != nil {
		return err
	}

	for k := range m.RegionData {

		if err := validate.Required("regionData"+"."+k, "body", m.RegionData[k]); err != nil {
			return err
		}
		for i := 0; i < len(m.RegionData[k]); i++ {

			if err := m.RegionData[k][i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("regionData" + "." + k + "." + strconv.Itoa(i))
				}
				return err
			}

		}

	}

	return nil
}

var itemCreateTypeSeasonTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PASS", "TIER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemCreateTypeSeasonTypePropEnum = append(itemCreateTypeSeasonTypePropEnum, v)
	}
}

const (

	// ItemCreateSeasonTypePASS captures enum value "PASS"
	ItemCreateSeasonTypePASS string = "PASS"

	// ItemCreateSeasonTypeTIER captures enum value "TIER"
	ItemCreateSeasonTypeTIER string = "TIER"
)

// prop value enum
func (m *ItemCreate) validateSeasonTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemCreateTypeSeasonTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var itemCreateTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemCreateTypeStatusPropEnum = append(itemCreateTypeStatusPropEnum, v)
	}
}

const (

	// ItemCreateStatusACTIVE captures enum value "ACTIVE"
	ItemCreateStatusACTIVE string = "ACTIVE"

	// ItemCreateStatusINACTIVE captures enum value "INACTIVE"
	ItemCreateStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *ItemCreate) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemCreateTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemCreate) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ItemCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemCreate) UnmarshalBinary(b []byte) error {
	var res ItemCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
