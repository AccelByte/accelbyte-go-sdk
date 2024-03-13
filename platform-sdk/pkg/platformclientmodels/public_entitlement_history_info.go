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

// PublicEntitlementHistoryInfo Public entitlement history info
//
// swagger:model Public entitlement history info.
type PublicEntitlementHistoryInfo struct {

	// The action of entitlement, like GRANT, REVOKE
	// Enum: ['DECREMENT', 'DISABLE', 'ENABLE', 'GRANT', 'REVOKE', 'SELL_BACK', 'UPDATE']
	// Required: true
	Action *string `json:"action"`

	// The clazz of entitlement
	// Enum: ['APP', 'CODE', 'ENTITLEMENT', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SUBSCRIPTION']
	Clazz string `json:"clazz,omitempty"`

	// History create time
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// The id of entitlement
	// Required: true
	EntitlementID *string `json:"entitlementId"`

	// The item id of entitlement
	ItemID string `json:"itemId,omitempty"`

	// The namespace of entitlement
	// Required: true
	Namespace *string `json:"namespace"`

	// The origin where the entitlement is granted
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	Origin string `json:"origin,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`

	// The sku of entitlement
	Sku string `json:"sku,omitempty"`

	// History update time
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// The reminder use count of a consumable entitlement.
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`

	// changed use count.
	// Format: int32
	UseCountChange int32 `json:"useCountChange,omitempty"`

	// The owner id of entitlement
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Public entitlement history info
func (m *PublicEntitlementHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEntitlementID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

var publicEntitlementHistoryInfoTypeActionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DECREMENT", "DISABLE", "ENABLE", "GRANT", "REVOKE", "SELL_BACK", "UPDATE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		publicEntitlementHistoryInfoTypeActionPropEnum = append(publicEntitlementHistoryInfoTypeActionPropEnum, v)
	}
}

const (

	// PublicEntitlementHistoryInfoActionDECREMENT captures enum value "DECREMENT"
	PublicEntitlementHistoryInfoActionDECREMENT string = "DECREMENT"

	// PublicEntitlementHistoryInfoActionDISABLE captures enum value "DISABLE"
	PublicEntitlementHistoryInfoActionDISABLE string = "DISABLE"

	// PublicEntitlementHistoryInfoActionENABLE captures enum value "ENABLE"
	PublicEntitlementHistoryInfoActionENABLE string = "ENABLE"

	// PublicEntitlementHistoryInfoActionGRANT captures enum value "GRANT"
	PublicEntitlementHistoryInfoActionGRANT string = "GRANT"

	// PublicEntitlementHistoryInfoActionREVOKE captures enum value "REVOKE"
	PublicEntitlementHistoryInfoActionREVOKE string = "REVOKE"

	// PublicEntitlementHistoryInfoActionSELLBACK captures enum value "SELL_BACK"
	PublicEntitlementHistoryInfoActionSELLBACK string = "SELL_BACK"

	// PublicEntitlementHistoryInfoActionUPDATE captures enum value "UPDATE"
	PublicEntitlementHistoryInfoActionUPDATE string = "UPDATE"
)

// prop value enum
func (m *PublicEntitlementHistoryInfo) validateActionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, publicEntitlementHistoryInfoTypeActionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PublicEntitlementHistoryInfo) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	// value enum
	if err := m.validateActionEnum("action", "body", *m.Action); err != nil {
		return err
	}

	return nil
}

var publicEntitlementHistoryInfoTypeClazzPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CODE", "ENTITLEMENT", "LOOTBOX", "MEDIA", "OPTIONBOX", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		publicEntitlementHistoryInfoTypeClazzPropEnum = append(publicEntitlementHistoryInfoTypeClazzPropEnum, v)
	}
}

const (

	// PublicEntitlementHistoryInfoClazzAPP captures enum value "APP"
	PublicEntitlementHistoryInfoClazzAPP string = "APP"

	// PublicEntitlementHistoryInfoClazzCODE captures enum value "CODE"
	PublicEntitlementHistoryInfoClazzCODE string = "CODE"

	// PublicEntitlementHistoryInfoClazzENTITLEMENT captures enum value "ENTITLEMENT"
	PublicEntitlementHistoryInfoClazzENTITLEMENT string = "ENTITLEMENT"

	// PublicEntitlementHistoryInfoClazzLOOTBOX captures enum value "LOOTBOX"
	PublicEntitlementHistoryInfoClazzLOOTBOX string = "LOOTBOX"

	// PublicEntitlementHistoryInfoClazzMEDIA captures enum value "MEDIA"
	PublicEntitlementHistoryInfoClazzMEDIA string = "MEDIA"

	// PublicEntitlementHistoryInfoClazzOPTIONBOX captures enum value "OPTIONBOX"
	PublicEntitlementHistoryInfoClazzOPTIONBOX string = "OPTIONBOX"

	// PublicEntitlementHistoryInfoClazzSUBSCRIPTION captures enum value "SUBSCRIPTION"
	PublicEntitlementHistoryInfoClazzSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *PublicEntitlementHistoryInfo) validateClazzEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, publicEntitlementHistoryInfoTypeClazzPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PublicEntitlementHistoryInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PublicEntitlementHistoryInfo) validateEntitlementID(formats strfmt.Registry) error {

	if err := validate.Required("entitlementId", "body", m.EntitlementID); err != nil {
		return err
	}

	return nil
}

func (m *PublicEntitlementHistoryInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var publicEntitlementHistoryInfoTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		publicEntitlementHistoryInfoTypeOriginPropEnum = append(publicEntitlementHistoryInfoTypeOriginPropEnum, v)
	}
}

const (

	// PublicEntitlementHistoryInfoOriginEPIC captures enum value "EPIC"
	PublicEntitlementHistoryInfoOriginEPIC string = "EPIC"

	// PublicEntitlementHistoryInfoOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	PublicEntitlementHistoryInfoOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// PublicEntitlementHistoryInfoOriginIOS captures enum value "IOS"
	PublicEntitlementHistoryInfoOriginIOS string = "IOS"

	// PublicEntitlementHistoryInfoOriginNINTENDO captures enum value "NINTENDO"
	PublicEntitlementHistoryInfoOriginNINTENDO string = "NINTENDO"

	// PublicEntitlementHistoryInfoOriginOCULUS captures enum value "OCULUS"
	PublicEntitlementHistoryInfoOriginOCULUS string = "OCULUS"

	// PublicEntitlementHistoryInfoOriginOTHER captures enum value "OTHER"
	PublicEntitlementHistoryInfoOriginOTHER string = "OTHER"

	// PublicEntitlementHistoryInfoOriginPLAYSTATION captures enum value "PLAYSTATION"
	PublicEntitlementHistoryInfoOriginPLAYSTATION string = "PLAYSTATION"

	// PublicEntitlementHistoryInfoOriginSTEAM captures enum value "STEAM"
	PublicEntitlementHistoryInfoOriginSTEAM string = "STEAM"

	// PublicEntitlementHistoryInfoOriginSYSTEM captures enum value "SYSTEM"
	PublicEntitlementHistoryInfoOriginSYSTEM string = "SYSTEM"

	// PublicEntitlementHistoryInfoOriginTWITCH captures enum value "TWITCH"
	PublicEntitlementHistoryInfoOriginTWITCH string = "TWITCH"

	// PublicEntitlementHistoryInfoOriginXBOX captures enum value "XBOX"
	PublicEntitlementHistoryInfoOriginXBOX string = "XBOX"
)

// prop value enum
func (m *PublicEntitlementHistoryInfo) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, publicEntitlementHistoryInfoTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PublicEntitlementHistoryInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PublicEntitlementHistoryInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PublicEntitlementHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PublicEntitlementHistoryInfo) UnmarshalBinary(b []byte) error {
	var res PublicEntitlementHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
