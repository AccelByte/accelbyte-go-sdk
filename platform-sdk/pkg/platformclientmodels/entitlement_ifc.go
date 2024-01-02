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

// EntitlementIfc Entitlement ifc
//
// swagger:model Entitlement ifc.
type EntitlementIfc struct {

	// appid
	AppID string `json:"appId,omitempty"`

	// apptype
	// Enum: ['DEMO', 'DLC', 'GAME', 'SOFTWARE']
	AppType string `json:"appType,omitempty"`

	// clazz
	// Enum: ['APP', 'CODE', 'ENTITLEMENT', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SUBSCRIPTION']
	Clazz string `json:"clazz,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// enddate
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// features
	// Unique: true
	Features []string `json:"features"`

	// grantedcode
	GrantedCode string `json:"grantedCode,omitempty"`

	// id
	ID string `json:"id,omitempty"`

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// itemnamespace
	ItemNamespace string `json:"itemNamespace,omitempty"`

	// name
	Name string `json:"name,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// noorigin
	NoOrigin bool `json:"noOrigin"`

	// origin
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	Origin string `json:"origin,omitempty"`

	// sku
	Sku string `json:"sku,omitempty"`

	// startdate
	// Format: date-time
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`

	// status
	// Enum: ['ACTIVE', 'CONSUMED', 'INACTIVE', 'REVOKED', 'SOLD']
	Status string `json:"status,omitempty"`

	// storeid
	StoreID string `json:"storeId,omitempty"`

	// type
	// Enum: ['CONSUMABLE', 'DURABLE']
	Type string `json:"type,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// usecount
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Entitlement ifc
func (m *EntitlementIfc) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var entitlementIfcTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementIfcTypeAppTypePropEnum = append(entitlementIfcTypeAppTypePropEnum, v)
	}
}

const (

	// EntitlementIfcAppTypeDEMO captures enum value "DEMO"
	EntitlementIfcAppTypeDEMO string = "DEMO"

	// EntitlementIfcAppTypeDLC captures enum value "DLC"
	EntitlementIfcAppTypeDLC string = "DLC"

	// EntitlementIfcAppTypeGAME captures enum value "GAME"
	EntitlementIfcAppTypeGAME string = "GAME"

	// EntitlementIfcAppTypeSOFTWARE captures enum value "SOFTWARE"
	EntitlementIfcAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *EntitlementIfc) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementIfcTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var entitlementIfcTypeClazzPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CODE", "ENTITLEMENT", "LOOTBOX", "MEDIA", "OPTIONBOX", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementIfcTypeClazzPropEnum = append(entitlementIfcTypeClazzPropEnum, v)
	}
}

const (

	// EntitlementIfcClazzAPP captures enum value "APP"
	EntitlementIfcClazzAPP string = "APP"

	// EntitlementIfcClazzCODE captures enum value "CODE"
	EntitlementIfcClazzCODE string = "CODE"

	// EntitlementIfcClazzENTITLEMENT captures enum value "ENTITLEMENT"
	EntitlementIfcClazzENTITLEMENT string = "ENTITLEMENT"

	// EntitlementIfcClazzLOOTBOX captures enum value "LOOTBOX"
	EntitlementIfcClazzLOOTBOX string = "LOOTBOX"

	// EntitlementIfcClazzMEDIA captures enum value "MEDIA"
	EntitlementIfcClazzMEDIA string = "MEDIA"

	// EntitlementIfcClazzOPTIONBOX captures enum value "OPTIONBOX"
	EntitlementIfcClazzOPTIONBOX string = "OPTIONBOX"

	// EntitlementIfcClazzSUBSCRIPTION captures enum value "SUBSCRIPTION"
	EntitlementIfcClazzSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *EntitlementIfc) validateClazzEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementIfcTypeClazzPropEnum, true); err != nil {
		return err
	}
	return nil
}

var entitlementIfcTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementIfcTypeOriginPropEnum = append(entitlementIfcTypeOriginPropEnum, v)
	}
}

const (

	// EntitlementIfcOriginEPIC captures enum value "EPIC"
	EntitlementIfcOriginEPIC string = "EPIC"

	// EntitlementIfcOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	EntitlementIfcOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// EntitlementIfcOriginIOS captures enum value "IOS"
	EntitlementIfcOriginIOS string = "IOS"

	// EntitlementIfcOriginNINTENDO captures enum value "NINTENDO"
	EntitlementIfcOriginNINTENDO string = "NINTENDO"

	// EntitlementIfcOriginOCULUS captures enum value "OCULUS"
	EntitlementIfcOriginOCULUS string = "OCULUS"

	// EntitlementIfcOriginOTHER captures enum value "OTHER"
	EntitlementIfcOriginOTHER string = "OTHER"

	// EntitlementIfcOriginPLAYSTATION captures enum value "PLAYSTATION"
	EntitlementIfcOriginPLAYSTATION string = "PLAYSTATION"

	// EntitlementIfcOriginSTEAM captures enum value "STEAM"
	EntitlementIfcOriginSTEAM string = "STEAM"

	// EntitlementIfcOriginSYSTEM captures enum value "SYSTEM"
	EntitlementIfcOriginSYSTEM string = "SYSTEM"

	// EntitlementIfcOriginTWITCH captures enum value "TWITCH"
	EntitlementIfcOriginTWITCH string = "TWITCH"

	// EntitlementIfcOriginXBOX captures enum value "XBOX"
	EntitlementIfcOriginXBOX string = "XBOX"
)

// prop value enum
func (m *EntitlementIfc) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementIfcTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

var entitlementIfcTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "CONSUMED", "INACTIVE", "REVOKED", "SOLD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementIfcTypeStatusPropEnum = append(entitlementIfcTypeStatusPropEnum, v)
	}
}

const (

	// EntitlementIfcStatusACTIVE captures enum value "ACTIVE"
	EntitlementIfcStatusACTIVE string = "ACTIVE"

	// EntitlementIfcStatusCONSUMED captures enum value "CONSUMED"
	EntitlementIfcStatusCONSUMED string = "CONSUMED"

	// EntitlementIfcStatusINACTIVE captures enum value "INACTIVE"
	EntitlementIfcStatusINACTIVE string = "INACTIVE"

	// EntitlementIfcStatusREVOKED captures enum value "REVOKED"
	EntitlementIfcStatusREVOKED string = "REVOKED"

	// EntitlementIfcStatusSOLD captures enum value "SOLD"
	EntitlementIfcStatusSOLD string = "SOLD"
)

// prop value enum
func (m *EntitlementIfc) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementIfcTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

var entitlementIfcTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementIfcTypeTypePropEnum = append(entitlementIfcTypeTypePropEnum, v)
	}
}

const (

	// EntitlementIfcTypeCONSUMABLE captures enum value "CONSUMABLE"
	EntitlementIfcTypeCONSUMABLE string = "CONSUMABLE"

	// EntitlementIfcTypeDURABLE captures enum value "DURABLE"
	EntitlementIfcTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *EntitlementIfc) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementIfcTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementIfc) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementIfc) UnmarshalBinary(b []byte) error {
	var res EntitlementIfc
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
