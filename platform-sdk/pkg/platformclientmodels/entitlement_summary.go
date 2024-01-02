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

// EntitlementSummary Entitlement summary
//
// swagger:model Entitlement summary.
type EntitlementSummary struct {

	// entitlement class
	// Enum: ['APP', 'CODE', 'ENTITLEMENT', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SUBSCRIPTION']
	// Required: true
	Clazz *string `json:"clazz"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// end date time
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// granted code
	GrantedCode string `json:"grantedCode,omitempty"`

	// entitlement id
	// Required: true
	ID *string `json:"id"`

	// item id
	ItemID string `json:"itemId,omitempty"`

	// entitlement name. Most of the time entitlement name is the same as the item name.
	Name string `json:"name,omitempty"`

	// entitlement namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// Whether entitlement have origin
	NoOrigin bool `json:"noOrigin"`

	// entitlement origin
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	Origin string `json:"origin,omitempty"`

	// Whether the CONSUMABLE entitlement is stackable
	Stackable bool `json:"stackable"`

	// CONSUMABLE entitlement stacked use count
	// Format: int32
	StackedUseCount int32 `json:"stackedUseCount,omitempty"`

	// start date time
	// Format: date-time
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`

	// item store id, null if published store
	StoreID string `json:"storeId,omitempty"`

	// entitlement type
	// Enum: ['CONSUMABLE', 'DURABLE']
	// Required: true
	Type *string `json:"type"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// userId for this entitlement
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Entitlement summary
func (m *EntitlementSummary) Validate(formats strfmt.Registry) error {
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
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var entitlementSummaryTypeClazzPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CODE", "ENTITLEMENT", "LOOTBOX", "MEDIA", "OPTIONBOX", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementSummaryTypeClazzPropEnum = append(entitlementSummaryTypeClazzPropEnum, v)
	}
}

const (

	// EntitlementSummaryClazzAPP captures enum value "APP"
	EntitlementSummaryClazzAPP string = "APP"

	// EntitlementSummaryClazzCODE captures enum value "CODE"
	EntitlementSummaryClazzCODE string = "CODE"

	// EntitlementSummaryClazzENTITLEMENT captures enum value "ENTITLEMENT"
	EntitlementSummaryClazzENTITLEMENT string = "ENTITLEMENT"

	// EntitlementSummaryClazzLOOTBOX captures enum value "LOOTBOX"
	EntitlementSummaryClazzLOOTBOX string = "LOOTBOX"

	// EntitlementSummaryClazzMEDIA captures enum value "MEDIA"
	EntitlementSummaryClazzMEDIA string = "MEDIA"

	// EntitlementSummaryClazzOPTIONBOX captures enum value "OPTIONBOX"
	EntitlementSummaryClazzOPTIONBOX string = "OPTIONBOX"

	// EntitlementSummaryClazzSUBSCRIPTION captures enum value "SUBSCRIPTION"
	EntitlementSummaryClazzSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *EntitlementSummary) validateClazzEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementSummaryTypeClazzPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementSummary) validateClazz(formats strfmt.Registry) error {

	if err := validate.Required("clazz", "body", m.Clazz); err != nil {
		return err
	}

	// value enum
	if err := m.validateClazzEnum("clazz", "body", *m.Clazz); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementSummary) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementSummary) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementSummary) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var entitlementSummaryTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementSummaryTypeOriginPropEnum = append(entitlementSummaryTypeOriginPropEnum, v)
	}
}

const (

	// EntitlementSummaryOriginEPIC captures enum value "EPIC"
	EntitlementSummaryOriginEPIC string = "EPIC"

	// EntitlementSummaryOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	EntitlementSummaryOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// EntitlementSummaryOriginIOS captures enum value "IOS"
	EntitlementSummaryOriginIOS string = "IOS"

	// EntitlementSummaryOriginNINTENDO captures enum value "NINTENDO"
	EntitlementSummaryOriginNINTENDO string = "NINTENDO"

	// EntitlementSummaryOriginOCULUS captures enum value "OCULUS"
	EntitlementSummaryOriginOCULUS string = "OCULUS"

	// EntitlementSummaryOriginOTHER captures enum value "OTHER"
	EntitlementSummaryOriginOTHER string = "OTHER"

	// EntitlementSummaryOriginPLAYSTATION captures enum value "PLAYSTATION"
	EntitlementSummaryOriginPLAYSTATION string = "PLAYSTATION"

	// EntitlementSummaryOriginSTEAM captures enum value "STEAM"
	EntitlementSummaryOriginSTEAM string = "STEAM"

	// EntitlementSummaryOriginSYSTEM captures enum value "SYSTEM"
	EntitlementSummaryOriginSYSTEM string = "SYSTEM"

	// EntitlementSummaryOriginTWITCH captures enum value "TWITCH"
	EntitlementSummaryOriginTWITCH string = "TWITCH"

	// EntitlementSummaryOriginXBOX captures enum value "XBOX"
	EntitlementSummaryOriginXBOX string = "XBOX"
)

// prop value enum
func (m *EntitlementSummary) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementSummaryTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

var entitlementSummaryTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementSummaryTypeTypePropEnum = append(entitlementSummaryTypeTypePropEnum, v)
	}
}

const (

	// EntitlementSummaryTypeCONSUMABLE captures enum value "CONSUMABLE"
	EntitlementSummaryTypeCONSUMABLE string = "CONSUMABLE"

	// EntitlementSummaryTypeDURABLE captures enum value "DURABLE"
	EntitlementSummaryTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *EntitlementSummary) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementSummaryTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementSummary) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementSummary) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementSummary) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementSummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementSummary) UnmarshalBinary(b []byte) error {
	var res EntitlementSummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
