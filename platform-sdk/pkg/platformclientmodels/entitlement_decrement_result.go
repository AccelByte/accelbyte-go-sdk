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

// EntitlementDecrementResult Entitlement decrement result
//
// swagger:model Entitlement decrement result.
type EntitlementDecrementResult struct {

	// appId if entitlement is an app
	AppID string `json:"appId,omitempty"`

	// appType if entitlement is an app
	// Enum: ['DEMO', 'DLC', 'GAME', 'SOFTWARE']
	AppType string `json:"appType,omitempty"`

	// entitlement class
	// Enum: ['APP', 'CODE', 'ENTITLEMENT', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SUBSCRIPTION']
	// Required: true
	Clazz *string `json:"clazz"`

	// entitlement collection id
	CollectionID string `json:"collectionId,omitempty"`

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

	// platform available
	PlatformAvailable bool `json:"platformAvailable"`

	// replayed, if true,the response is original successful response. This will not be included in response if client have not pass request id.
	Replayed bool `json:"replayed"`

	// request id
	RequestID string `json:"requestId,omitempty"`

	// loot reward, only return when consume a loot box entitlement
	Rewards []*EntitlementLootBoxReward `json:"rewards,omitempty"`

	// sku for purchased item
	Sku string `json:"sku,omitempty"`

	// entitlement source
	// Enum: ['ACHIEVEMENT', 'GIFT', 'IAP', 'OTHER', 'PROMOTION', 'PURCHASE', 'REDEEM_CODE', 'REFERRAL_BONUS', 'REWARD']
	Source string `json:"source,omitempty"`

	// Whether the CONSUMABLE entitlement is stackable
	Stackable bool `json:"stackable"`

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

// Validate validates this Entitlement decrement result
func (m *EntitlementDecrementResult) Validate(formats strfmt.Registry) error {
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

var entitlementDecrementResultTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementDecrementResultTypeAppTypePropEnum = append(entitlementDecrementResultTypeAppTypePropEnum, v)
	}
}

const (

	// EntitlementDecrementResultAppTypeDEMO captures enum value "DEMO"
	EntitlementDecrementResultAppTypeDEMO string = "DEMO"

	// EntitlementDecrementResultAppTypeDLC captures enum value "DLC"
	EntitlementDecrementResultAppTypeDLC string = "DLC"

	// EntitlementDecrementResultAppTypeGAME captures enum value "GAME"
	EntitlementDecrementResultAppTypeGAME string = "GAME"

	// EntitlementDecrementResultAppTypeSOFTWARE captures enum value "SOFTWARE"
	EntitlementDecrementResultAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *EntitlementDecrementResult) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementDecrementResultTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var entitlementDecrementResultTypeClazzPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CODE", "ENTITLEMENT", "LOOTBOX", "MEDIA", "OPTIONBOX", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementDecrementResultTypeClazzPropEnum = append(entitlementDecrementResultTypeClazzPropEnum, v)
	}
}

const (

	// EntitlementDecrementResultClazzAPP captures enum value "APP"
	EntitlementDecrementResultClazzAPP string = "APP"

	// EntitlementDecrementResultClazzCODE captures enum value "CODE"
	EntitlementDecrementResultClazzCODE string = "CODE"

	// EntitlementDecrementResultClazzENTITLEMENT captures enum value "ENTITLEMENT"
	EntitlementDecrementResultClazzENTITLEMENT string = "ENTITLEMENT"

	// EntitlementDecrementResultClazzLOOTBOX captures enum value "LOOTBOX"
	EntitlementDecrementResultClazzLOOTBOX string = "LOOTBOX"

	// EntitlementDecrementResultClazzMEDIA captures enum value "MEDIA"
	EntitlementDecrementResultClazzMEDIA string = "MEDIA"

	// EntitlementDecrementResultClazzOPTIONBOX captures enum value "OPTIONBOX"
	EntitlementDecrementResultClazzOPTIONBOX string = "OPTIONBOX"

	// EntitlementDecrementResultClazzSUBSCRIPTION captures enum value "SUBSCRIPTION"
	EntitlementDecrementResultClazzSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *EntitlementDecrementResult) validateClazzEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementDecrementResultTypeClazzPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementDecrementResult) validateClazz(formats strfmt.Registry) error {

	if err := validate.Required("clazz", "body", m.Clazz); err != nil {
		return err
	}

	// value enum
	if err := m.validateClazzEnum("clazz", "body", *m.Clazz); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementDecrementResult) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementDecrementResult) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementDecrementResult) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementDecrementResult) validateItemNamespace(formats strfmt.Registry) error {

	if err := validate.Required("itemNamespace", "body", m.ItemNamespace); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementDecrementResult) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var entitlementDecrementResultTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementDecrementResultTypeOriginPropEnum = append(entitlementDecrementResultTypeOriginPropEnum, v)
	}
}

const (

	// EntitlementDecrementResultOriginEPIC captures enum value "EPIC"
	EntitlementDecrementResultOriginEPIC string = "EPIC"

	// EntitlementDecrementResultOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	EntitlementDecrementResultOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// EntitlementDecrementResultOriginIOS captures enum value "IOS"
	EntitlementDecrementResultOriginIOS string = "IOS"

	// EntitlementDecrementResultOriginNINTENDO captures enum value "NINTENDO"
	EntitlementDecrementResultOriginNINTENDO string = "NINTENDO"

	// EntitlementDecrementResultOriginOCULUS captures enum value "OCULUS"
	EntitlementDecrementResultOriginOCULUS string = "OCULUS"

	// EntitlementDecrementResultOriginOTHER captures enum value "OTHER"
	EntitlementDecrementResultOriginOTHER string = "OTHER"

	// EntitlementDecrementResultOriginPLAYSTATION captures enum value "PLAYSTATION"
	EntitlementDecrementResultOriginPLAYSTATION string = "PLAYSTATION"

	// EntitlementDecrementResultOriginSTEAM captures enum value "STEAM"
	EntitlementDecrementResultOriginSTEAM string = "STEAM"

	// EntitlementDecrementResultOriginSYSTEM captures enum value "SYSTEM"
	EntitlementDecrementResultOriginSYSTEM string = "SYSTEM"

	// EntitlementDecrementResultOriginTWITCH captures enum value "TWITCH"
	EntitlementDecrementResultOriginTWITCH string = "TWITCH"

	// EntitlementDecrementResultOriginXBOX captures enum value "XBOX"
	EntitlementDecrementResultOriginXBOX string = "XBOX"
)

// prop value enum
func (m *EntitlementDecrementResult) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementDecrementResultTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

var entitlementDecrementResultTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACHIEVEMENT", "GIFT", "IAP", "OTHER", "PROMOTION", "PURCHASE", "REDEEM_CODE", "REFERRAL_BONUS", "REWARD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementDecrementResultTypeSourcePropEnum = append(entitlementDecrementResultTypeSourcePropEnum, v)
	}
}

const (

	// EntitlementDecrementResultSourceACHIEVEMENT captures enum value "ACHIEVEMENT"
	EntitlementDecrementResultSourceACHIEVEMENT string = "ACHIEVEMENT"

	// EntitlementDecrementResultSourceGIFT captures enum value "GIFT"
	EntitlementDecrementResultSourceGIFT string = "GIFT"

	// EntitlementDecrementResultSourceIAP captures enum value "IAP"
	EntitlementDecrementResultSourceIAP string = "IAP"

	// EntitlementDecrementResultSourceOTHER captures enum value "OTHER"
	EntitlementDecrementResultSourceOTHER string = "OTHER"

	// EntitlementDecrementResultSourcePROMOTION captures enum value "PROMOTION"
	EntitlementDecrementResultSourcePROMOTION string = "PROMOTION"

	// EntitlementDecrementResultSourcePURCHASE captures enum value "PURCHASE"
	EntitlementDecrementResultSourcePURCHASE string = "PURCHASE"

	// EntitlementDecrementResultSourceREDEEMCODE captures enum value "REDEEM_CODE"
	EntitlementDecrementResultSourceREDEEMCODE string = "REDEEM_CODE"

	// EntitlementDecrementResultSourceREFERRALBONUS captures enum value "REFERRAL_BONUS"
	EntitlementDecrementResultSourceREFERRALBONUS string = "REFERRAL_BONUS"

	// EntitlementDecrementResultSourceREWARD captures enum value "REWARD"
	EntitlementDecrementResultSourceREWARD string = "REWARD"
)

// prop value enum
func (m *EntitlementDecrementResult) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementDecrementResultTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

var entitlementDecrementResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "CONSUMED", "INACTIVE", "REVOKED", "SOLD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementDecrementResultTypeStatusPropEnum = append(entitlementDecrementResultTypeStatusPropEnum, v)
	}
}

const (

	// EntitlementDecrementResultStatusACTIVE captures enum value "ACTIVE"
	EntitlementDecrementResultStatusACTIVE string = "ACTIVE"

	// EntitlementDecrementResultStatusCONSUMED captures enum value "CONSUMED"
	EntitlementDecrementResultStatusCONSUMED string = "CONSUMED"

	// EntitlementDecrementResultStatusINACTIVE captures enum value "INACTIVE"
	EntitlementDecrementResultStatusINACTIVE string = "INACTIVE"

	// EntitlementDecrementResultStatusREVOKED captures enum value "REVOKED"
	EntitlementDecrementResultStatusREVOKED string = "REVOKED"

	// EntitlementDecrementResultStatusSOLD captures enum value "SOLD"
	EntitlementDecrementResultStatusSOLD string = "SOLD"
)

// prop value enum
func (m *EntitlementDecrementResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementDecrementResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementDecrementResult) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

var entitlementDecrementResultTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementDecrementResultTypeTypePropEnum = append(entitlementDecrementResultTypeTypePropEnum, v)
	}
}

const (

	// EntitlementDecrementResultTypeCONSUMABLE captures enum value "CONSUMABLE"
	EntitlementDecrementResultTypeCONSUMABLE string = "CONSUMABLE"

	// EntitlementDecrementResultTypeDURABLE captures enum value "DURABLE"
	EntitlementDecrementResultTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *EntitlementDecrementResult) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementDecrementResultTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementDecrementResult) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementDecrementResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementDecrementResult) UnmarshalBinary(b []byte) error {
	var res EntitlementDecrementResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
