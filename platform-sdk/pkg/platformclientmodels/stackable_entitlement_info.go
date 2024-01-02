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

// StackableEntitlementInfo Stackable entitlement info
//
// swagger:model Stackable entitlement info.
type StackableEntitlementInfo struct {

	// appId if entitlement is an app
	AppID string `json:"appId,omitempty"`

	// appType if entitlement is an app
	// Enum: ['DEMO', 'DLC', 'GAME', 'SOFTWARE']
	AppType string `json:"appType,omitempty"`

	// entitlement class
	// Enum: ['APP', 'CODE', 'ENTITLEMENT', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SUBSCRIPTION']
	// Required: true
	Clazz *string `json:"clazz"`

	// entitlement created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// entitlement end date
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// entitlement features
	// Unique: true
	Features []string `json:"features"`

	// entitlement granted at
	// Format: date-time
	GrantedAt *strfmt.DateTime `json:"grantedAt,omitempty"`

	// grantedCode, the granted code
	GrantedCode string `json:"grantedCode,omitempty"`

	// entitlement id
	// Required: true
	ID *string `json:"id"`

	// itemId of the entitlement
	// Required: true
	ItemID *string `json:"itemId"`

	// itemNamespace for the purchased item
	// Required: true
	ItemNamespace *string `json:"itemNamespace"`

	// itemSnapshot
	ItemSnapshot *ItemSnapshot `json:"itemSnapshot,omitempty"`

	// entitlement name
	Name string `json:"name,omitempty"`

	// entitlement namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// Whether entitlement have origin
	NoOrigin bool `json:"noOrigin"`

	// entitlement origin
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	Origin string `json:"origin,omitempty"`

	// sku for purchased item
	Sku string `json:"sku,omitempty"`

	// entitlement source
	// Enum: ['ACHIEVEMENT', 'GIFT', 'IAP', 'OTHER', 'PROMOTION', 'PURCHASE', 'REDEEM_CODE', 'REFERRAL_BONUS', 'REWARD']
	Source string `json:"source,omitempty"`

	// whether the CONSUMABLE entitlement is stackable
	Stackable bool `json:"stackable"`

	// CONSUMABLE entitlement stacked use count
	// Format: int32
	StackedUseCount int32 `json:"stackedUseCount,omitempty"`

	// entitlement start date
	// Format: date-time
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`

	// entitlement status
	// Enum: ['ACTIVE', 'CONSUMED', 'INACTIVE', 'REVOKED', 'SOLD']
	// Required: true
	Status *string `json:"status"`

	// storeId of the item, published store if omitted
	StoreID string `json:"storeId,omitempty"`

	// entitlement type
	// Enum: ['CONSUMABLE', 'DURABLE']
	Type string `json:"type,omitempty"`

	// entitlement updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// useCount for entitlement
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`

	// userId for this entitlement
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Stackable entitlement info
func (m *StackableEntitlementInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClazz(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemNamespace(formats); err != nil {
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

var stackableEntitlementInfoTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		stackableEntitlementInfoTypeAppTypePropEnum = append(stackableEntitlementInfoTypeAppTypePropEnum, v)
	}
}

const (

	// StackableEntitlementInfoAppTypeDEMO captures enum value "DEMO"
	StackableEntitlementInfoAppTypeDEMO string = "DEMO"

	// StackableEntitlementInfoAppTypeDLC captures enum value "DLC"
	StackableEntitlementInfoAppTypeDLC string = "DLC"

	// StackableEntitlementInfoAppTypeGAME captures enum value "GAME"
	StackableEntitlementInfoAppTypeGAME string = "GAME"

	// StackableEntitlementInfoAppTypeSOFTWARE captures enum value "SOFTWARE"
	StackableEntitlementInfoAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *StackableEntitlementInfo) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, stackableEntitlementInfoTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var stackableEntitlementInfoTypeClazzPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CODE", "ENTITLEMENT", "LOOTBOX", "MEDIA", "OPTIONBOX", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		stackableEntitlementInfoTypeClazzPropEnum = append(stackableEntitlementInfoTypeClazzPropEnum, v)
	}
}

const (

	// StackableEntitlementInfoClazzAPP captures enum value "APP"
	StackableEntitlementInfoClazzAPP string = "APP"

	// StackableEntitlementInfoClazzCODE captures enum value "CODE"
	StackableEntitlementInfoClazzCODE string = "CODE"

	// StackableEntitlementInfoClazzENTITLEMENT captures enum value "ENTITLEMENT"
	StackableEntitlementInfoClazzENTITLEMENT string = "ENTITLEMENT"

	// StackableEntitlementInfoClazzLOOTBOX captures enum value "LOOTBOX"
	StackableEntitlementInfoClazzLOOTBOX string = "LOOTBOX"

	// StackableEntitlementInfoClazzMEDIA captures enum value "MEDIA"
	StackableEntitlementInfoClazzMEDIA string = "MEDIA"

	// StackableEntitlementInfoClazzOPTIONBOX captures enum value "OPTIONBOX"
	StackableEntitlementInfoClazzOPTIONBOX string = "OPTIONBOX"

	// StackableEntitlementInfoClazzSUBSCRIPTION captures enum value "SUBSCRIPTION"
	StackableEntitlementInfoClazzSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *StackableEntitlementInfo) validateClazzEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, stackableEntitlementInfoTypeClazzPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *StackableEntitlementInfo) validateClazz(formats strfmt.Registry) error {

	if err := validate.Required("clazz", "body", m.Clazz); err != nil {
		return err
	}

	// value enum
	if err := m.validateClazzEnum("clazz", "body", *m.Clazz); err != nil {
		return err
	}

	return nil
}

func (m *StackableEntitlementInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *StackableEntitlementInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *StackableEntitlementInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *StackableEntitlementInfo) validateItemNamespace(formats strfmt.Registry) error {

	if err := validate.Required("itemNamespace", "body", m.ItemNamespace); err != nil {
		return err
	}

	return nil
}

func (m *StackableEntitlementInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var stackableEntitlementInfoTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		stackableEntitlementInfoTypeOriginPropEnum = append(stackableEntitlementInfoTypeOriginPropEnum, v)
	}
}

const (

	// StackableEntitlementInfoOriginEPIC captures enum value "EPIC"
	StackableEntitlementInfoOriginEPIC string = "EPIC"

	// StackableEntitlementInfoOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	StackableEntitlementInfoOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// StackableEntitlementInfoOriginIOS captures enum value "IOS"
	StackableEntitlementInfoOriginIOS string = "IOS"

	// StackableEntitlementInfoOriginNINTENDO captures enum value "NINTENDO"
	StackableEntitlementInfoOriginNINTENDO string = "NINTENDO"

	// StackableEntitlementInfoOriginOCULUS captures enum value "OCULUS"
	StackableEntitlementInfoOriginOCULUS string = "OCULUS"

	// StackableEntitlementInfoOriginOTHER captures enum value "OTHER"
	StackableEntitlementInfoOriginOTHER string = "OTHER"

	// StackableEntitlementInfoOriginPLAYSTATION captures enum value "PLAYSTATION"
	StackableEntitlementInfoOriginPLAYSTATION string = "PLAYSTATION"

	// StackableEntitlementInfoOriginSTEAM captures enum value "STEAM"
	StackableEntitlementInfoOriginSTEAM string = "STEAM"

	// StackableEntitlementInfoOriginSYSTEM captures enum value "SYSTEM"
	StackableEntitlementInfoOriginSYSTEM string = "SYSTEM"

	// StackableEntitlementInfoOriginTWITCH captures enum value "TWITCH"
	StackableEntitlementInfoOriginTWITCH string = "TWITCH"

	// StackableEntitlementInfoOriginXBOX captures enum value "XBOX"
	StackableEntitlementInfoOriginXBOX string = "XBOX"
)

// prop value enum
func (m *StackableEntitlementInfo) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, stackableEntitlementInfoTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

var stackableEntitlementInfoTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACHIEVEMENT", "GIFT", "IAP", "OTHER", "PROMOTION", "PURCHASE", "REDEEM_CODE", "REFERRAL_BONUS", "REWARD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		stackableEntitlementInfoTypeSourcePropEnum = append(stackableEntitlementInfoTypeSourcePropEnum, v)
	}
}

const (

	// StackableEntitlementInfoSourceACHIEVEMENT captures enum value "ACHIEVEMENT"
	StackableEntitlementInfoSourceACHIEVEMENT string = "ACHIEVEMENT"

	// StackableEntitlementInfoSourceGIFT captures enum value "GIFT"
	StackableEntitlementInfoSourceGIFT string = "GIFT"

	// StackableEntitlementInfoSourceIAP captures enum value "IAP"
	StackableEntitlementInfoSourceIAP string = "IAP"

	// StackableEntitlementInfoSourceOTHER captures enum value "OTHER"
	StackableEntitlementInfoSourceOTHER string = "OTHER"

	// StackableEntitlementInfoSourcePROMOTION captures enum value "PROMOTION"
	StackableEntitlementInfoSourcePROMOTION string = "PROMOTION"

	// StackableEntitlementInfoSourcePURCHASE captures enum value "PURCHASE"
	StackableEntitlementInfoSourcePURCHASE string = "PURCHASE"

	// StackableEntitlementInfoSourceREDEEMCODE captures enum value "REDEEM_CODE"
	StackableEntitlementInfoSourceREDEEMCODE string = "REDEEM_CODE"

	// StackableEntitlementInfoSourceREFERRALBONUS captures enum value "REFERRAL_BONUS"
	StackableEntitlementInfoSourceREFERRALBONUS string = "REFERRAL_BONUS"

	// StackableEntitlementInfoSourceREWARD captures enum value "REWARD"
	StackableEntitlementInfoSourceREWARD string = "REWARD"
)

// prop value enum
func (m *StackableEntitlementInfo) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, stackableEntitlementInfoTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

var stackableEntitlementInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "CONSUMED", "INACTIVE", "REVOKED", "SOLD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		stackableEntitlementInfoTypeStatusPropEnum = append(stackableEntitlementInfoTypeStatusPropEnum, v)
	}
}

const (

	// StackableEntitlementInfoStatusACTIVE captures enum value "ACTIVE"
	StackableEntitlementInfoStatusACTIVE string = "ACTIVE"

	// StackableEntitlementInfoStatusCONSUMED captures enum value "CONSUMED"
	StackableEntitlementInfoStatusCONSUMED string = "CONSUMED"

	// StackableEntitlementInfoStatusINACTIVE captures enum value "INACTIVE"
	StackableEntitlementInfoStatusINACTIVE string = "INACTIVE"

	// StackableEntitlementInfoStatusREVOKED captures enum value "REVOKED"
	StackableEntitlementInfoStatusREVOKED string = "REVOKED"

	// StackableEntitlementInfoStatusSOLD captures enum value "SOLD"
	StackableEntitlementInfoStatusSOLD string = "SOLD"
)

// prop value enum
func (m *StackableEntitlementInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, stackableEntitlementInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *StackableEntitlementInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

var stackableEntitlementInfoTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		stackableEntitlementInfoTypeTypePropEnum = append(stackableEntitlementInfoTypeTypePropEnum, v)
	}
}

const (

	// StackableEntitlementInfoTypeCONSUMABLE captures enum value "CONSUMABLE"
	StackableEntitlementInfoTypeCONSUMABLE string = "CONSUMABLE"

	// StackableEntitlementInfoTypeDURABLE captures enum value "DURABLE"
	StackableEntitlementInfoTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *StackableEntitlementInfo) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, stackableEntitlementInfoTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *StackableEntitlementInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *StackableEntitlementInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StackableEntitlementInfo) UnmarshalBinary(b []byte) error {
	var res StackableEntitlementInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
