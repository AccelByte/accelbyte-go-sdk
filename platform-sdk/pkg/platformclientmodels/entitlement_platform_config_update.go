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

// EntitlementPlatformConfigUpdate Entitlement platform config update
//
// swagger:model Entitlement platform config update.
type EntitlementPlatformConfigUpdate struct {

	// allowedplatformorigins
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	AllowedPlatformOrigins []string `json:"allowedPlatformOrigins,omitempty"`
}

// Validate validates this Entitlement platform config update
func (m *EntitlementPlatformConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var entitlementPlatformConfigUpdateTypeAllowedPlatformOriginsItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementPlatformConfigUpdateTypeAllowedPlatformOriginsItemsEnum = append(entitlementPlatformConfigUpdateTypeAllowedPlatformOriginsItemsEnum, v)
	}
}

const (

	// EntitlementPlatformConfigUpdateAllowedPlatformOriginsEPIC captures enum value "EPIC"
	EntitlementPlatformConfigUpdateAllowedPlatformOriginsEPIC string = "EPIC"

	// EntitlementPlatformConfigUpdateAllowedPlatformOriginsGOOGLEPLAY captures enum value "GOOGLEPLAY"
	EntitlementPlatformConfigUpdateAllowedPlatformOriginsGOOGLEPLAY string = "GOOGLEPLAY"

	// EntitlementPlatformConfigUpdateAllowedPlatformOriginsIOS captures enum value "IOS"
	EntitlementPlatformConfigUpdateAllowedPlatformOriginsIOS string = "IOS"

	// EntitlementPlatformConfigUpdateAllowedPlatformOriginsNINTENDO captures enum value "NINTENDO"
	EntitlementPlatformConfigUpdateAllowedPlatformOriginsNINTENDO string = "NINTENDO"

	// EntitlementPlatformConfigUpdateAllowedPlatformOriginsOCULUS captures enum value "OCULUS"
	EntitlementPlatformConfigUpdateAllowedPlatformOriginsOCULUS string = "OCULUS"

	// EntitlementPlatformConfigUpdateAllowedPlatformOriginsOTHER captures enum value "OTHER"
	EntitlementPlatformConfigUpdateAllowedPlatformOriginsOTHER string = "OTHER"

	// EntitlementPlatformConfigUpdateAllowedPlatformOriginsPLAYSTATION captures enum value "PLAYSTATION"
	EntitlementPlatformConfigUpdateAllowedPlatformOriginsPLAYSTATION string = "PLAYSTATION"

	// EntitlementPlatformConfigUpdateAllowedPlatformOriginsSTEAM captures enum value "STEAM"
	EntitlementPlatformConfigUpdateAllowedPlatformOriginsSTEAM string = "STEAM"

	// EntitlementPlatformConfigUpdateAllowedPlatformOriginsSYSTEM captures enum value "SYSTEM"
	EntitlementPlatformConfigUpdateAllowedPlatformOriginsSYSTEM string = "SYSTEM"

	// EntitlementPlatformConfigUpdateAllowedPlatformOriginsTWITCH captures enum value "TWITCH"
	EntitlementPlatformConfigUpdateAllowedPlatformOriginsTWITCH string = "TWITCH"

	// EntitlementPlatformConfigUpdateAllowedPlatformOriginsXBOX captures enum value "XBOX"
	EntitlementPlatformConfigUpdateAllowedPlatformOriginsXBOX string = "XBOX"
)

func (m *EntitlementPlatformConfigUpdate) validateAllowedPlatformOriginsItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementPlatformConfigUpdateTypeAllowedPlatformOriginsItemsEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementPlatformConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementPlatformConfigUpdate) UnmarshalBinary(b []byte) error {
	var res EntitlementPlatformConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
