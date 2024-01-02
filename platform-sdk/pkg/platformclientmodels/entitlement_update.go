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

// EntitlementUpdate Entitlement update
//
// swagger:model Entitlement update.
type EntitlementUpdate struct {

	// end date of the entitlement. yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// nullFieldList
	NullFieldList []string `json:"nullFieldList,omitempty"`

	// origin of the entitlement
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	Origin string `json:"origin,omitempty"`

	// update reason
	Reason string `json:"reason,omitempty"`

	// start date of the entitlement. yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
	// Format: date-time
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`

	// status
	// Enum: ['ACTIVE', 'CONSUMED', 'INACTIVE', 'REVOKED', 'SOLD']
	Status string `json:"status,omitempty"`

	// useCount of a consumable entitlement
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Entitlement update
func (m *EntitlementUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var entitlementUpdateTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementUpdateTypeOriginPropEnum = append(entitlementUpdateTypeOriginPropEnum, v)
	}
}

const (

	// EntitlementUpdateOriginEPIC captures enum value "EPIC"
	EntitlementUpdateOriginEPIC string = "EPIC"

	// EntitlementUpdateOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	EntitlementUpdateOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// EntitlementUpdateOriginIOS captures enum value "IOS"
	EntitlementUpdateOriginIOS string = "IOS"

	// EntitlementUpdateOriginNINTENDO captures enum value "NINTENDO"
	EntitlementUpdateOriginNINTENDO string = "NINTENDO"

	// EntitlementUpdateOriginOCULUS captures enum value "OCULUS"
	EntitlementUpdateOriginOCULUS string = "OCULUS"

	// EntitlementUpdateOriginOTHER captures enum value "OTHER"
	EntitlementUpdateOriginOTHER string = "OTHER"

	// EntitlementUpdateOriginPLAYSTATION captures enum value "PLAYSTATION"
	EntitlementUpdateOriginPLAYSTATION string = "PLAYSTATION"

	// EntitlementUpdateOriginSTEAM captures enum value "STEAM"
	EntitlementUpdateOriginSTEAM string = "STEAM"

	// EntitlementUpdateOriginSYSTEM captures enum value "SYSTEM"
	EntitlementUpdateOriginSYSTEM string = "SYSTEM"

	// EntitlementUpdateOriginTWITCH captures enum value "TWITCH"
	EntitlementUpdateOriginTWITCH string = "TWITCH"

	// EntitlementUpdateOriginXBOX captures enum value "XBOX"
	EntitlementUpdateOriginXBOX string = "XBOX"
)

// prop value enum
func (m *EntitlementUpdate) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementUpdateTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

var entitlementUpdateTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "CONSUMED", "INACTIVE", "REVOKED", "SOLD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementUpdateTypeStatusPropEnum = append(entitlementUpdateTypeStatusPropEnum, v)
	}
}

const (

	// EntitlementUpdateStatusACTIVE captures enum value "ACTIVE"
	EntitlementUpdateStatusACTIVE string = "ACTIVE"

	// EntitlementUpdateStatusCONSUMED captures enum value "CONSUMED"
	EntitlementUpdateStatusCONSUMED string = "CONSUMED"

	// EntitlementUpdateStatusINACTIVE captures enum value "INACTIVE"
	EntitlementUpdateStatusINACTIVE string = "INACTIVE"

	// EntitlementUpdateStatusREVOKED captures enum value "REVOKED"
	EntitlementUpdateStatusREVOKED string = "REVOKED"

	// EntitlementUpdateStatusSOLD captures enum value "SOLD"
	EntitlementUpdateStatusSOLD string = "SOLD"
)

// prop value enum
func (m *EntitlementUpdate) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementUpdateTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementUpdate) UnmarshalBinary(b []byte) error {
	var res EntitlementUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
