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

// BundledItemInfo Bundled item info
//
// swagger:model Bundled item info.
type BundledItemInfo struct {

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

	// bundledqty
	// Format: int32
	BundledQty int32 `json:"bundledQty,omitempty"`

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

// Validate validates this Bundled item info
func (m *BundledItemInfo) Validate(formats strfmt.Registry) error {
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

var bundledItemInfoTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		bundledItemInfoTypeAppTypePropEnum = append(bundledItemInfoTypeAppTypePropEnum, v)
	}
}

const (

	// BundledItemInfoAppTypeDEMO captures enum value "DEMO"
	BundledItemInfoAppTypeDEMO string = "DEMO"

	// BundledItemInfoAppTypeDLC captures enum value "DLC"
	BundledItemInfoAppTypeDLC string = "DLC"

	// BundledItemInfoAppTypeGAME captures enum value "GAME"
	BundledItemInfoAppTypeGAME string = "GAME"

	// BundledItemInfoAppTypeSOFTWARE captures enum value "SOFTWARE"
	BundledItemInfoAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *BundledItemInfo) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, bundledItemInfoTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *BundledItemInfo) validateCategoryPath(formats strfmt.Registry) error {

	if err := validate.Required("categoryPath", "body", m.CategoryPath); err != nil {
		return err
	}

	return nil
}

func (m *BundledItemInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

var bundledItemInfoTypeEntitlementTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		bundledItemInfoTypeEntitlementTypePropEnum = append(bundledItemInfoTypeEntitlementTypePropEnum, v)
	}
}

const (

	// BundledItemInfoEntitlementTypeCONSUMABLE captures enum value "CONSUMABLE"
	BundledItemInfoEntitlementTypeCONSUMABLE string = "CONSUMABLE"

	// BundledItemInfoEntitlementTypeDURABLE captures enum value "DURABLE"
	BundledItemInfoEntitlementTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *BundledItemInfo) validateEntitlementTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, bundledItemInfoTypeEntitlementTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *BundledItemInfo) validateEntitlementType(formats strfmt.Registry) error {

	if err := validate.Required("entitlementType", "body", m.EntitlementType); err != nil {
		return err
	}

	// value enum
	if err := m.validateEntitlementTypeEnum("entitlementType", "body", *m.EntitlementType); err != nil {
		return err
	}

	return nil
}

func (m *BundledItemInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

var bundledItemInfoTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		bundledItemInfoTypeItemTypePropEnum = append(bundledItemInfoTypeItemTypePropEnum, v)
	}
}

const (

	// BundledItemInfoItemTypeAPP captures enum value "APP"
	BundledItemInfoItemTypeAPP string = "APP"

	// BundledItemInfoItemTypeBUNDLE captures enum value "BUNDLE"
	BundledItemInfoItemTypeBUNDLE string = "BUNDLE"

	// BundledItemInfoItemTypeCODE captures enum value "CODE"
	BundledItemInfoItemTypeCODE string = "CODE"

	// BundledItemInfoItemTypeCOINS captures enum value "COINS"
	BundledItemInfoItemTypeCOINS string = "COINS"

	// BundledItemInfoItemTypeEXTENSION captures enum value "EXTENSION"
	BundledItemInfoItemTypeEXTENSION string = "EXTENSION"

	// BundledItemInfoItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	BundledItemInfoItemTypeINGAMEITEM string = "INGAMEITEM"

	// BundledItemInfoItemTypeLOOTBOX captures enum value "LOOTBOX"
	BundledItemInfoItemTypeLOOTBOX string = "LOOTBOX"

	// BundledItemInfoItemTypeMEDIA captures enum value "MEDIA"
	BundledItemInfoItemTypeMEDIA string = "MEDIA"

	// BundledItemInfoItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	BundledItemInfoItemTypeOPTIONBOX string = "OPTIONBOX"

	// BundledItemInfoItemTypeSEASON captures enum value "SEASON"
	BundledItemInfoItemTypeSEASON string = "SEASON"

	// BundledItemInfoItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	BundledItemInfoItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *BundledItemInfo) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, bundledItemInfoTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *BundledItemInfo) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemTypeEnum("itemType", "body", *m.ItemType); err != nil {
		return err
	}

	return nil
}

func (m *BundledItemInfo) validateLanguage(formats strfmt.Registry) error {

	if err := validate.Required("language", "body", m.Language); err != nil {
		return err
	}

	return nil
}

func (m *BundledItemInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *BundledItemInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *BundledItemInfo) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

var bundledItemInfoTypeSeasonTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PASS", "TIER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		bundledItemInfoTypeSeasonTypePropEnum = append(bundledItemInfoTypeSeasonTypePropEnum, v)
	}
}

const (

	// BundledItemInfoSeasonTypePASS captures enum value "PASS"
	BundledItemInfoSeasonTypePASS string = "PASS"

	// BundledItemInfoSeasonTypeTIER captures enum value "TIER"
	BundledItemInfoSeasonTypeTIER string = "TIER"
)

// prop value enum
func (m *BundledItemInfo) validateSeasonTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, bundledItemInfoTypeSeasonTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var bundledItemInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		bundledItemInfoTypeStatusPropEnum = append(bundledItemInfoTypeStatusPropEnum, v)
	}
}

const (

	// BundledItemInfoStatusACTIVE captures enum value "ACTIVE"
	BundledItemInfoStatusACTIVE string = "ACTIVE"

	// BundledItemInfoStatusINACTIVE captures enum value "INACTIVE"
	BundledItemInfoStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *BundledItemInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, bundledItemInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *BundledItemInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *BundledItemInfo) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

func (m *BundledItemInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *BundledItemInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BundledItemInfo) UnmarshalBinary(b []byte) error {
	var res BundledItemInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
