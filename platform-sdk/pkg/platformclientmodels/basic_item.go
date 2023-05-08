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

// BasicItem Basic item
//
// swagger:model Basic item.
type BasicItem struct {

	// App id, required when itemType is APP
	AppID string `json:"appId,omitempty"`

	// App type, required when itemType is APP
	// Enum: ['DEMO', 'DLC', 'GAME', 'SOFTWARE']
	AppType string `json:"appType,omitempty"`

	// Base app id
	BaseAppID string `json:"baseAppId,omitempty"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// Entitlement type
	// Enum: ['CONSUMABLE', 'DURABLE']
	// Required: true
	EntitlementType *string `json:"entitlementType"`

	// Features
	// Unique: true
	Features []string `json:"features"`

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

	// Season type, required while itemType is SEASON
	// Enum: ['PASS', 'TIER']
	SeasonType string `json:"seasonType,omitempty"`

	// Sku
	Sku string `json:"sku,omitempty"`

	// Item status
	// Enum: ['ACTIVE', 'INACTIVE']
	// Required: true
	Status *string `json:"status"`

	// Tags
	// Unique: true
	Tags []string `json:"tags"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// Item use count, required when entitlement type is consumable or itemType is COINS
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Basic item
func (m *BasicItem) Validate(formats strfmt.Registry) error {
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

var basicItemTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		basicItemTypeAppTypePropEnum = append(basicItemTypeAppTypePropEnum, v)
	}
}

const (

	// BasicItemAppTypeDEMO captures enum value "DEMO"
	BasicItemAppTypeDEMO string = "DEMO"

	// BasicItemAppTypeDLC captures enum value "DLC"
	BasicItemAppTypeDLC string = "DLC"

	// BasicItemAppTypeGAME captures enum value "GAME"
	BasicItemAppTypeGAME string = "GAME"

	// BasicItemAppTypeSOFTWARE captures enum value "SOFTWARE"
	BasicItemAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *BasicItem) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, basicItemTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *BasicItem) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

var basicItemTypeEntitlementTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		basicItemTypeEntitlementTypePropEnum = append(basicItemTypeEntitlementTypePropEnum, v)
	}
}

const (

	// BasicItemEntitlementTypeCONSUMABLE captures enum value "CONSUMABLE"
	BasicItemEntitlementTypeCONSUMABLE string = "CONSUMABLE"

	// BasicItemEntitlementTypeDURABLE captures enum value "DURABLE"
	BasicItemEntitlementTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *BasicItem) validateEntitlementTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, basicItemTypeEntitlementTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *BasicItem) validateEntitlementType(formats strfmt.Registry) error {

	if err := validate.Required("entitlementType", "body", m.EntitlementType); err != nil {
		return err
	}

	// value enum
	if err := m.validateEntitlementTypeEnum("entitlementType", "body", *m.EntitlementType); err != nil {
		return err
	}

	return nil
}

func (m *BasicItem) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

var basicItemTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		basicItemTypeItemTypePropEnum = append(basicItemTypeItemTypePropEnum, v)
	}
}

const (

	// BasicItemItemTypeAPP captures enum value "APP"
	BasicItemItemTypeAPP string = "APP"

	// BasicItemItemTypeBUNDLE captures enum value "BUNDLE"
	BasicItemItemTypeBUNDLE string = "BUNDLE"

	// BasicItemItemTypeCODE captures enum value "CODE"
	BasicItemItemTypeCODE string = "CODE"

	// BasicItemItemTypeCOINS captures enum value "COINS"
	BasicItemItemTypeCOINS string = "COINS"

	// BasicItemItemTypeEXTENSION captures enum value "EXTENSION"
	BasicItemItemTypeEXTENSION string = "EXTENSION"

	// BasicItemItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	BasicItemItemTypeINGAMEITEM string = "INGAMEITEM"

	// BasicItemItemTypeLOOTBOX captures enum value "LOOTBOX"
	BasicItemItemTypeLOOTBOX string = "LOOTBOX"

	// BasicItemItemTypeMEDIA captures enum value "MEDIA"
	BasicItemItemTypeMEDIA string = "MEDIA"

	// BasicItemItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	BasicItemItemTypeOPTIONBOX string = "OPTIONBOX"

	// BasicItemItemTypeSEASON captures enum value "SEASON"
	BasicItemItemTypeSEASON string = "SEASON"

	// BasicItemItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	BasicItemItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *BasicItem) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, basicItemTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *BasicItem) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemTypeEnum("itemType", "body", *m.ItemType); err != nil {
		return err
	}

	return nil
}

func (m *BasicItem) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *BasicItem) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var basicItemTypeSeasonTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PASS", "TIER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		basicItemTypeSeasonTypePropEnum = append(basicItemTypeSeasonTypePropEnum, v)
	}
}

const (

	// BasicItemSeasonTypePASS captures enum value "PASS"
	BasicItemSeasonTypePASS string = "PASS"

	// BasicItemSeasonTypeTIER captures enum value "TIER"
	BasicItemSeasonTypeTIER string = "TIER"
)

// prop value enum
func (m *BasicItem) validateSeasonTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, basicItemTypeSeasonTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var basicItemTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		basicItemTypeStatusPropEnum = append(basicItemTypeStatusPropEnum, v)
	}
}

const (

	// BasicItemStatusACTIVE captures enum value "ACTIVE"
	BasicItemStatusACTIVE string = "ACTIVE"

	// BasicItemStatusINACTIVE captures enum value "INACTIVE"
	BasicItemStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *BasicItem) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, basicItemTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *BasicItem) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *BasicItem) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *BasicItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BasicItem) UnmarshalBinary(b []byte) error {
	var res BasicItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
