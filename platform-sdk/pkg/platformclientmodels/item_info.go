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

// ItemInfo Item info
//
// swagger:model Item info.
type ItemInfo struct {

	// App id, required when itemType is APP
	AppID string `json:"appId,omitempty"`

	// App type, required when itemType is APP
	// Enum: ['DEMO', 'DLC', 'GAME', 'SOFTWARE']
	AppType string `json:"appType,omitempty"`

	// Base app id
	BaseAppID string `json:"baseAppId,omitempty"`

	// booth name to get tickets while it's item type is CODE
	BoothName string `json:"boothName,omitempty"`

	// the items which this item being bounded to
	// Unique: true
	BoundItemIds []string `json:"boundItemIds"`

	// Item category path
	// Required: true
	CategoryPath *string `json:"categoryPath"`

	// customized item clazz
	Clazz string `json:"clazz,omitempty"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// description info
	Description string `json:"description,omitempty"`

	// display order
	// Format: int32
	DisplayOrder int32 `json:"displayOrder,omitempty"`

	// Entitlement type
	// Enum: ['CONSUMABLE', 'DURABLE']
	// Required: true
	EntitlementType *string `json:"entitlementType"`

	// customized item properties
	Ext interface{} `json:"ext,omitempty"`

	// Features
	// Unique: true
	Features []string `json:"features"`

	// whether flexible pricing applied, only applied if itemType is BUNDLE
	Flexible bool `json:"flexible"`

	// fresh
	Fresh bool `json:"fresh"`

	// images
	Images []*Image `json:"images,omitempty"`

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

	// localext
	LocalExt interface{} `json:"localExt,omitempty"`

	// long description info
	LongDescription string `json:"longDescription,omitempty"`

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

	// Item namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// option box config
	OptionBoxConfig *OptionBoxConfig `json:"optionBoxConfig,omitempty"`

	// Whether can be purchased
	Purchasable bool `json:"purchasable"`

	// purchase condition
	PurchaseCondition *PurchaseCondition `json:"purchaseCondition,omitempty"`

	// recurring for subscription
	Recurring *Recurring `json:"recurring,omitempty"`

	// region
	// Required: true
	Region *string `json:"region"`

	// Region data
	RegionData []*RegionDataItem `json:"regionData,omitempty"`

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

	// Item status
	// Enum: ['ACTIVE', 'INACTIVE']
	// Required: true
	Status *string `json:"status"`

	// Tags
	// Unique: true
	Tags []string `json:"tags"`

	// Target currency code of coin item
	TargetCurrencyCode string `json:"targetCurrencyCode,omitempty"`

	// Target item id if this item is mapping from game namespace
	TargetItemID string `json:"targetItemId,omitempty"`

	// The target namespace of a cross namespace item
	TargetNamespace string `json:"targetNamespace,omitempty"`

	// thumbnail url
	ThumbnailURL string `json:"thumbnailUrl,omitempty"`

	// title info
	// Required: true
	Title *string `json:"title"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// Item use count, required when entitlement type is consumable or itemType is COINS
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Item info
func (m *ItemInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCategoryPath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
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
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTitle(formats); err != nil {
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

var itemInfoTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemInfoTypeAppTypePropEnum = append(itemInfoTypeAppTypePropEnum, v)
	}
}

const (

	// ItemInfoAppTypeDEMO captures enum value "DEMO"
	ItemInfoAppTypeDEMO string = "DEMO"

	// ItemInfoAppTypeDLC captures enum value "DLC"
	ItemInfoAppTypeDLC string = "DLC"

	// ItemInfoAppTypeGAME captures enum value "GAME"
	ItemInfoAppTypeGAME string = "GAME"

	// ItemInfoAppTypeSOFTWARE captures enum value "SOFTWARE"
	ItemInfoAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *ItemInfo) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemInfoTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemInfo) validateCategoryPath(formats strfmt.Registry) error {

	if err := validate.Required("categoryPath", "body", m.CategoryPath); err != nil {
		return err
	}

	return nil
}

func (m *ItemInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

var itemInfoTypeEntitlementTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemInfoTypeEntitlementTypePropEnum = append(itemInfoTypeEntitlementTypePropEnum, v)
	}
}

const (

	// ItemInfoEntitlementTypeCONSUMABLE captures enum value "CONSUMABLE"
	ItemInfoEntitlementTypeCONSUMABLE string = "CONSUMABLE"

	// ItemInfoEntitlementTypeDURABLE captures enum value "DURABLE"
	ItemInfoEntitlementTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *ItemInfo) validateEntitlementTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemInfoTypeEntitlementTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemInfo) validateEntitlementType(formats strfmt.Registry) error {

	if err := validate.Required("entitlementType", "body", m.EntitlementType); err != nil {
		return err
	}

	// value enum
	if err := m.validateEntitlementTypeEnum("entitlementType", "body", *m.EntitlementType); err != nil {
		return err
	}

	return nil
}

func (m *ItemInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

var itemInfoTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemInfoTypeItemTypePropEnum = append(itemInfoTypeItemTypePropEnum, v)
	}
}

const (

	// ItemInfoItemTypeAPP captures enum value "APP"
	ItemInfoItemTypeAPP string = "APP"

	// ItemInfoItemTypeBUNDLE captures enum value "BUNDLE"
	ItemInfoItemTypeBUNDLE string = "BUNDLE"

	// ItemInfoItemTypeCODE captures enum value "CODE"
	ItemInfoItemTypeCODE string = "CODE"

	// ItemInfoItemTypeCOINS captures enum value "COINS"
	ItemInfoItemTypeCOINS string = "COINS"

	// ItemInfoItemTypeEXTENSION captures enum value "EXTENSION"
	ItemInfoItemTypeEXTENSION string = "EXTENSION"

	// ItemInfoItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ItemInfoItemTypeINGAMEITEM string = "INGAMEITEM"

	// ItemInfoItemTypeLOOTBOX captures enum value "LOOTBOX"
	ItemInfoItemTypeLOOTBOX string = "LOOTBOX"

	// ItemInfoItemTypeMEDIA captures enum value "MEDIA"
	ItemInfoItemTypeMEDIA string = "MEDIA"

	// ItemInfoItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	ItemInfoItemTypeOPTIONBOX string = "OPTIONBOX"

	// ItemInfoItemTypeSEASON captures enum value "SEASON"
	ItemInfoItemTypeSEASON string = "SEASON"

	// ItemInfoItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	ItemInfoItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *ItemInfo) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemInfoTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemInfo) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemTypeEnum("itemType", "body", *m.ItemType); err != nil {
		return err
	}

	return nil
}

func (m *ItemInfo) validateLanguage(formats strfmt.Registry) error {

	if err := validate.Required("language", "body", m.Language); err != nil {
		return err
	}

	return nil
}

func (m *ItemInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ItemInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ItemInfo) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

var itemInfoTypeSeasonTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PASS", "TIER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemInfoTypeSeasonTypePropEnum = append(itemInfoTypeSeasonTypePropEnum, v)
	}
}

const (

	// ItemInfoSeasonTypePASS captures enum value "PASS"
	ItemInfoSeasonTypePASS string = "PASS"

	// ItemInfoSeasonTypeTIER captures enum value "TIER"
	ItemInfoSeasonTypeTIER string = "TIER"
)

// prop value enum
func (m *ItemInfo) validateSeasonTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemInfoTypeSeasonTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var itemInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemInfoTypeStatusPropEnum = append(itemInfoTypeStatusPropEnum, v)
	}
}

const (

	// ItemInfoStatusACTIVE captures enum value "ACTIVE"
	ItemInfoStatusACTIVE string = "ACTIVE"

	// ItemInfoStatusINACTIVE captures enum value "INACTIVE"
	ItemInfoStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *ItemInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ItemInfo) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

func (m *ItemInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ItemInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemInfo) UnmarshalBinary(b []byte) error {
	var res ItemInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
