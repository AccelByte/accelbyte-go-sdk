// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ItemInfo item info
//
// swagger:model ItemInfo
type ItemInfo struct {

	// App id, required when itemType is APP
	AppID string `json:"appId,omitempty"`

	// App type, required when itemType is APP
	// Enum: [GAME SOFTWARE DLC DEMO]
	AppType string `json:"appType,omitempty"`

	// Base app id
	BaseAppID string `json:"baseAppId,omitempty"`

	// booth name to get tickets while it's item type is CODE
	BoothName string `json:"boothName,omitempty"`

	// Item category path
	// Required: true
	CategoryPath *string `json:"categoryPath"`

	// customized item clazz
	Clazz string `json:"clazz,omitempty"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt"`

	// description info
	Description string `json:"description,omitempty"`

	// display order
	DisplayOrder int32 `json:"displayOrder,omitempty"`

	// Entitlement type
	// Required: true
	// Enum: [DURABLE CONSUMABLE]
	EntitlementType *string `json:"entitlementType"`

	// customized item properties
	Ext map[string]interface{} `json:"ext,omitempty"`

	// Features
	// Unique: true
	Features []string `json:"features"`

	// images
	Images []*Image `json:"images"`

	// Item id
	// Required: true
	ItemID *string `json:"itemId"`

	// itemIds, should be empty if item type is not "BUNDLE"
	ItemIds []string `json:"itemIds"`

	// Item type
	// Required: true
	// Enum: [APP COINS INGAMEITEM BUNDLE CODE SUBSCRIPTION]
	ItemType *string `json:"itemType"`

	// language
	// Required: true
	Language *string `json:"language"`

	// local ext
	LocalExt map[string]interface{} `json:"localExt,omitempty"`

	// long description info
	LongDescription string `json:"longDescription,omitempty"`

	// Max count, -1 means UNLIMITED, unset when itemType is CODE
	MaxCount int32 `json:"maxCount,omitempty"`

	// Max count per user, -1 means UNLIMITED
	MaxCountPerUser int32 `json:"maxCountPerUser,omitempty"`

	// Name
	// Required: true
	Name *string `json:"name"`

	// Item namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// recurring for subscription
	Recurring *Recurring `json:"recurring,omitempty"`

	// region
	// Required: true
	Region *string `json:"region"`

	// Region data
	RegionData []*RegionDataItem `json:"regionData"`

	// Sku
	Sku string `json:"sku,omitempty"`

	// Whether stack the CONSUMABLE entitlement
	Stackable bool `json:"stackable,omitempty"`

	// Item status
	// Required: true
	// Enum: [ACTIVE INACTIVE]
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
	UpdatedAt *strfmt.DateTime `json:"updatedAt"`

	// Item use count, required when entitlement type is consumable or itemType is COINS
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this item info
func (m *ItemInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCategoryPath(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateEntitlementType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateFeatures(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateImages(formats); err != nil {
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

	if err := m.validateRecurring(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRegionData(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTags(formats); err != nil {
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
	if err := json.Unmarshal([]byte(`["GAME","SOFTWARE","DLC","DEMO"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemInfoTypeAppTypePropEnum = append(itemInfoTypeAppTypePropEnum, v)
	}
}

const (

	// ItemInfoAppTypeGAME captures enum value "GAME"
	ItemInfoAppTypeGAME string = "GAME"

	// ItemInfoAppTypeSOFTWARE captures enum value "SOFTWARE"
	ItemInfoAppTypeSOFTWARE string = "SOFTWARE"

	// ItemInfoAppTypeDLC captures enum value "DLC"
	ItemInfoAppTypeDLC string = "DLC"

	// ItemInfoAppTypeDEMO captures enum value "DEMO"
	ItemInfoAppTypeDEMO string = "DEMO"
)

// prop value enum
func (m *ItemInfo) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemInfoTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ItemInfo) validateAppType(formats strfmt.Registry) error {

	if swag.IsZero(m.AppType) { // not required
		return nil
	}

	// value enum
	if err := m.validateAppTypeEnum("appType", "body", m.AppType); err != nil {
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

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
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
	if err := json.Unmarshal([]byte(`["DURABLE","CONSUMABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemInfoTypeEntitlementTypePropEnum = append(itemInfoTypeEntitlementTypePropEnum, v)
	}
}

const (

	// ItemInfoEntitlementTypeDURABLE captures enum value "DURABLE"
	ItemInfoEntitlementTypeDURABLE string = "DURABLE"

	// ItemInfoEntitlementTypeCONSUMABLE captures enum value "CONSUMABLE"
	ItemInfoEntitlementTypeCONSUMABLE string = "CONSUMABLE"
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

func (m *ItemInfo) validateFeatures(formats strfmt.Registry) error {

	if swag.IsZero(m.Features) { // not required
		return nil
	}

	if err := validate.UniqueItems("features", "body", m.Features); err != nil {
		return err
	}

	return nil
}

func (m *ItemInfo) validateImages(formats strfmt.Registry) error {

	if swag.IsZero(m.Images) { // not required
		return nil
	}

	for i := 0; i < len(m.Images); i++ {
		if swag.IsZero(m.Images[i]) { // not required
			continue
		}

		if m.Images[i] != nil {
			if err := m.Images[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("images" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

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
	if err := json.Unmarshal([]byte(`["APP","COINS","INGAMEITEM","BUNDLE","CODE","SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemInfoTypeItemTypePropEnum = append(itemInfoTypeItemTypePropEnum, v)
	}
}

const (

	// ItemInfoItemTypeAPP captures enum value "APP"
	ItemInfoItemTypeAPP string = "APP"

	// ItemInfoItemTypeCOINS captures enum value "COINS"
	ItemInfoItemTypeCOINS string = "COINS"

	// ItemInfoItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ItemInfoItemTypeINGAMEITEM string = "INGAMEITEM"

	// ItemInfoItemTypeBUNDLE captures enum value "BUNDLE"
	ItemInfoItemTypeBUNDLE string = "BUNDLE"

	// ItemInfoItemTypeCODE captures enum value "CODE"
	ItemInfoItemTypeCODE string = "CODE"

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

func (m *ItemInfo) validateRecurring(formats strfmt.Registry) error {

	if swag.IsZero(m.Recurring) { // not required
		return nil
	}

	if m.Recurring != nil {
		if err := m.Recurring.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("recurring")
			}
			return err
		}
	}

	return nil
}

func (m *ItemInfo) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ItemInfo) validateRegionData(formats strfmt.Registry) error {

	if swag.IsZero(m.RegionData) { // not required
		return nil
	}

	for i := 0; i < len(m.RegionData); i++ {
		if swag.IsZero(m.RegionData[i]) { // not required
			continue
		}

		if m.RegionData[i] != nil {
			if err := m.RegionData[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("regionData" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

var itemInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE","INACTIVE"]`), &res); err != nil {
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

func (m *ItemInfo) validateTags(formats strfmt.Registry) error {

	if swag.IsZero(m.Tags) { // not required
		return nil
	}

	if err := validate.UniqueItems("tags", "body", m.Tags); err != nil {
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

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
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
