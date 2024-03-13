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

// EntitlementHistoryInfo Entitlement history info
//
// swagger:model Entitlement history info.
type EntitlementHistoryInfo struct {

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

	// The operator
	// Required: true
	Operator *string `json:"operator"`

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

// Validate validates this Entitlement history info
func (m *EntitlementHistoryInfo) Validate(formats strfmt.Registry) error {
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
	if err := m.validateOperator(formats); err != nil {
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

var entitlementHistoryInfoTypeActionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DECREMENT", "DISABLE", "ENABLE", "GRANT", "REVOKE", "SELL_BACK", "UPDATE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementHistoryInfoTypeActionPropEnum = append(entitlementHistoryInfoTypeActionPropEnum, v)
	}
}

const (

	// EntitlementHistoryInfoActionDECREMENT captures enum value "DECREMENT"
	EntitlementHistoryInfoActionDECREMENT string = "DECREMENT"

	// EntitlementHistoryInfoActionDISABLE captures enum value "DISABLE"
	EntitlementHistoryInfoActionDISABLE string = "DISABLE"

	// EntitlementHistoryInfoActionENABLE captures enum value "ENABLE"
	EntitlementHistoryInfoActionENABLE string = "ENABLE"

	// EntitlementHistoryInfoActionGRANT captures enum value "GRANT"
	EntitlementHistoryInfoActionGRANT string = "GRANT"

	// EntitlementHistoryInfoActionREVOKE captures enum value "REVOKE"
	EntitlementHistoryInfoActionREVOKE string = "REVOKE"

	// EntitlementHistoryInfoActionSELLBACK captures enum value "SELL_BACK"
	EntitlementHistoryInfoActionSELLBACK string = "SELL_BACK"

	// EntitlementHistoryInfoActionUPDATE captures enum value "UPDATE"
	EntitlementHistoryInfoActionUPDATE string = "UPDATE"
)

// prop value enum
func (m *EntitlementHistoryInfo) validateActionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementHistoryInfoTypeActionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementHistoryInfo) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	// value enum
	if err := m.validateActionEnum("action", "body", *m.Action); err != nil {
		return err
	}

	return nil
}

var entitlementHistoryInfoTypeClazzPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CODE", "ENTITLEMENT", "LOOTBOX", "MEDIA", "OPTIONBOX", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementHistoryInfoTypeClazzPropEnum = append(entitlementHistoryInfoTypeClazzPropEnum, v)
	}
}

const (

	// EntitlementHistoryInfoClazzAPP captures enum value "APP"
	EntitlementHistoryInfoClazzAPP string = "APP"

	// EntitlementHistoryInfoClazzCODE captures enum value "CODE"
	EntitlementHistoryInfoClazzCODE string = "CODE"

	// EntitlementHistoryInfoClazzENTITLEMENT captures enum value "ENTITLEMENT"
	EntitlementHistoryInfoClazzENTITLEMENT string = "ENTITLEMENT"

	// EntitlementHistoryInfoClazzLOOTBOX captures enum value "LOOTBOX"
	EntitlementHistoryInfoClazzLOOTBOX string = "LOOTBOX"

	// EntitlementHistoryInfoClazzMEDIA captures enum value "MEDIA"
	EntitlementHistoryInfoClazzMEDIA string = "MEDIA"

	// EntitlementHistoryInfoClazzOPTIONBOX captures enum value "OPTIONBOX"
	EntitlementHistoryInfoClazzOPTIONBOX string = "OPTIONBOX"

	// EntitlementHistoryInfoClazzSUBSCRIPTION captures enum value "SUBSCRIPTION"
	EntitlementHistoryInfoClazzSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *EntitlementHistoryInfo) validateClazzEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementHistoryInfoTypeClazzPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementHistoryInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementHistoryInfo) validateEntitlementID(formats strfmt.Registry) error {

	if err := validate.Required("entitlementId", "body", m.EntitlementID); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementHistoryInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementHistoryInfo) validateOperator(formats strfmt.Registry) error {

	if err := validate.Required("operator", "body", m.Operator); err != nil {
		return err
	}

	return nil
}

var entitlementHistoryInfoTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementHistoryInfoTypeOriginPropEnum = append(entitlementHistoryInfoTypeOriginPropEnum, v)
	}
}

const (

	// EntitlementHistoryInfoOriginEPIC captures enum value "EPIC"
	EntitlementHistoryInfoOriginEPIC string = "EPIC"

	// EntitlementHistoryInfoOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	EntitlementHistoryInfoOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// EntitlementHistoryInfoOriginIOS captures enum value "IOS"
	EntitlementHistoryInfoOriginIOS string = "IOS"

	// EntitlementHistoryInfoOriginNINTENDO captures enum value "NINTENDO"
	EntitlementHistoryInfoOriginNINTENDO string = "NINTENDO"

	// EntitlementHistoryInfoOriginOCULUS captures enum value "OCULUS"
	EntitlementHistoryInfoOriginOCULUS string = "OCULUS"

	// EntitlementHistoryInfoOriginOTHER captures enum value "OTHER"
	EntitlementHistoryInfoOriginOTHER string = "OTHER"

	// EntitlementHistoryInfoOriginPLAYSTATION captures enum value "PLAYSTATION"
	EntitlementHistoryInfoOriginPLAYSTATION string = "PLAYSTATION"

	// EntitlementHistoryInfoOriginSTEAM captures enum value "STEAM"
	EntitlementHistoryInfoOriginSTEAM string = "STEAM"

	// EntitlementHistoryInfoOriginSYSTEM captures enum value "SYSTEM"
	EntitlementHistoryInfoOriginSYSTEM string = "SYSTEM"

	// EntitlementHistoryInfoOriginTWITCH captures enum value "TWITCH"
	EntitlementHistoryInfoOriginTWITCH string = "TWITCH"

	// EntitlementHistoryInfoOriginXBOX captures enum value "XBOX"
	EntitlementHistoryInfoOriginXBOX string = "XBOX"
)

// prop value enum
func (m *EntitlementHistoryInfo) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementHistoryInfoTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementHistoryInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementHistoryInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementHistoryInfo) UnmarshalBinary(b []byte) error {
	var res EntitlementHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
