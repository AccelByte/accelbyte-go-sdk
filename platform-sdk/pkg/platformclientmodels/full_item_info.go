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

// FullItemInfo Full item info
//
// swagger:model Full item info.
type FullItemInfo struct {

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
	CategoryPath string `json:"categoryPath,omitempty"`

	// customized item clazz
	Clazz string `json:"clazz,omitempty"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

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

	// whether it supported flexible pricing
	Flexible bool `json:"flexible"`

	// images
	Images []*Image `json:"images,omitempty"`

	// inventory config
	InventoryConfig *InventoryConfig `json:"inventoryConfig,omitempty"`

	// Item id
	// Required: true
	ItemID *string `json:"itemId"`

	// Bundle item's item ids
	ItemIds []string `json:"itemIds,omitempty"`

	// itemQty, the quantity of item in itemIds, default 1, should be empty if item type is not "BUNDLE"
	ItemQty map[string]int32 `json:"itemQty,omitempty"`

	// Item type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	// Required: true
	ItemType *string `json:"itemType"`

	// Whether can be visible in Store for public user
	Listable bool `json:"listable"`

	// Item localizations
	// Required: true
	Localizations map[string]Localization `json:"localizations"`

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

	// Item region data
	// Required: true
	RegionData map[string][]RegionDataItem `json:"regionData"`

	// saleConfig
	SaleConfig *SaleConfig `json:"saleConfig,omitempty"`

	// Season type, required while itemType is SEASON
	// Enum: ['PASS', 'TIER']
	SeasonType string `json:"seasonType,omitempty"`

	// whether it is sold in section only
	SectionExclusive bool `json:"sectionExclusive"`

	// sellable
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

	// The target currency code of coin Item
	TargetCurrencyCode string `json:"targetCurrencyCode,omitempty"`

	// Target item id if this item is mapping from game namespace
	TargetItemID string `json:"targetItemId,omitempty"`

	// The target namespace of a cross namespace item
	TargetNamespace string `json:"targetNamespace,omitempty"`

	// thumbnail url
	ThumbnailURL string `json:"thumbnailUrl,omitempty"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// Item use count, required when entitlement type is consumable or itemType is COINS
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Full item info
func (m *FullItemInfo) Validate(formats strfmt.Registry) error {
	var res []error

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
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegionData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
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

var fullItemInfoTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fullItemInfoTypeAppTypePropEnum = append(fullItemInfoTypeAppTypePropEnum, v)
	}
}

const (

	// FullItemInfoAppTypeDEMO captures enum value "DEMO"
	FullItemInfoAppTypeDEMO string = "DEMO"

	// FullItemInfoAppTypeDLC captures enum value "DLC"
	FullItemInfoAppTypeDLC string = "DLC"

	// FullItemInfoAppTypeGAME captures enum value "GAME"
	FullItemInfoAppTypeGAME string = "GAME"

	// FullItemInfoAppTypeSOFTWARE captures enum value "SOFTWARE"
	FullItemInfoAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *FullItemInfo) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fullItemInfoTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FullItemInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

var fullItemInfoTypeEntitlementTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fullItemInfoTypeEntitlementTypePropEnum = append(fullItemInfoTypeEntitlementTypePropEnum, v)
	}
}

const (

	// FullItemInfoEntitlementTypeCONSUMABLE captures enum value "CONSUMABLE"
	FullItemInfoEntitlementTypeCONSUMABLE string = "CONSUMABLE"

	// FullItemInfoEntitlementTypeDURABLE captures enum value "DURABLE"
	FullItemInfoEntitlementTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *FullItemInfo) validateEntitlementTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fullItemInfoTypeEntitlementTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FullItemInfo) validateEntitlementType(formats strfmt.Registry) error {

	if err := validate.Required("entitlementType", "body", m.EntitlementType); err != nil {
		return err
	}

	// value enum
	if err := m.validateEntitlementTypeEnum("entitlementType", "body", *m.EntitlementType); err != nil {
		return err
	}

	return nil
}

func (m *FullItemInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

var fullItemInfoTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fullItemInfoTypeItemTypePropEnum = append(fullItemInfoTypeItemTypePropEnum, v)
	}
}

const (

	// FullItemInfoItemTypeAPP captures enum value "APP"
	FullItemInfoItemTypeAPP string = "APP"

	// FullItemInfoItemTypeBUNDLE captures enum value "BUNDLE"
	FullItemInfoItemTypeBUNDLE string = "BUNDLE"

	// FullItemInfoItemTypeCODE captures enum value "CODE"
	FullItemInfoItemTypeCODE string = "CODE"

	// FullItemInfoItemTypeCOINS captures enum value "COINS"
	FullItemInfoItemTypeCOINS string = "COINS"

	// FullItemInfoItemTypeEXTENSION captures enum value "EXTENSION"
	FullItemInfoItemTypeEXTENSION string = "EXTENSION"

	// FullItemInfoItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	FullItemInfoItemTypeINGAMEITEM string = "INGAMEITEM"

	// FullItemInfoItemTypeLOOTBOX captures enum value "LOOTBOX"
	FullItemInfoItemTypeLOOTBOX string = "LOOTBOX"

	// FullItemInfoItemTypeMEDIA captures enum value "MEDIA"
	FullItemInfoItemTypeMEDIA string = "MEDIA"

	// FullItemInfoItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	FullItemInfoItemTypeOPTIONBOX string = "OPTIONBOX"

	// FullItemInfoItemTypeSEASON captures enum value "SEASON"
	FullItemInfoItemTypeSEASON string = "SEASON"

	// FullItemInfoItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	FullItemInfoItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *FullItemInfo) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fullItemInfoTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FullItemInfo) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemTypeEnum("itemType", "body", *m.ItemType); err != nil {
		return err
	}

	return nil
}

func (m *FullItemInfo) validateLocalizations(formats strfmt.Registry) error {

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

func (m *FullItemInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *FullItemInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *FullItemInfo) validateRegionData(formats strfmt.Registry) error {

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

var fullItemInfoTypeSeasonTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PASS", "TIER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fullItemInfoTypeSeasonTypePropEnum = append(fullItemInfoTypeSeasonTypePropEnum, v)
	}
}

const (

	// FullItemInfoSeasonTypePASS captures enum value "PASS"
	FullItemInfoSeasonTypePASS string = "PASS"

	// FullItemInfoSeasonTypeTIER captures enum value "TIER"
	FullItemInfoSeasonTypeTIER string = "TIER"
)

// prop value enum
func (m *FullItemInfo) validateSeasonTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fullItemInfoTypeSeasonTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var fullItemInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fullItemInfoTypeStatusPropEnum = append(fullItemInfoTypeStatusPropEnum, v)
	}
}

const (

	// FullItemInfoStatusACTIVE captures enum value "ACTIVE"
	FullItemInfoStatusACTIVE string = "ACTIVE"

	// FullItemInfoStatusINACTIVE captures enum value "INACTIVE"
	FullItemInfoStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *FullItemInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fullItemInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FullItemInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *FullItemInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *FullItemInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FullItemInfo) UnmarshalBinary(b []byte) error {
	var res FullItemInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
