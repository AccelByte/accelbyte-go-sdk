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

// RevokeItem Revoke item
//
// swagger:model Revoke item.
type RevokeItem struct {

	// platform ,it is used to revoke entitlements of the specified allowed platforms, only available in ENTITLEMENT item
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	EntitlementOrigin string `json:"entitlementOrigin,omitempty"`

	// item identity
	ItemIdentity string `json:"itemIdentity,omitempty"`

	// item identity type
	// Enum: ['ITEM_ID', 'ITEM_SKU']
	ItemIdentityType string `json:"itemIdentityType,omitempty"`

	// balance origin, it is used to debit the wallet of the specified balance origin, only available in COINS item
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	Origin string `json:"origin,omitempty"`
}

// Validate validates this Revoke item
func (m *RevokeItem) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var revokeItemTypeEntitlementOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revokeItemTypeEntitlementOriginPropEnum = append(revokeItemTypeEntitlementOriginPropEnum, v)
	}
}

const (

	// RevokeItemEntitlementOriginEPIC captures enum value "EPIC"
	RevokeItemEntitlementOriginEPIC string = "EPIC"

	// RevokeItemEntitlementOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	RevokeItemEntitlementOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// RevokeItemEntitlementOriginIOS captures enum value "IOS"
	RevokeItemEntitlementOriginIOS string = "IOS"

	// RevokeItemEntitlementOriginNINTENDO captures enum value "NINTENDO"
	RevokeItemEntitlementOriginNINTENDO string = "NINTENDO"

	// RevokeItemEntitlementOriginOCULUS captures enum value "OCULUS"
	RevokeItemEntitlementOriginOCULUS string = "OCULUS"

	// RevokeItemEntitlementOriginOTHER captures enum value "OTHER"
	RevokeItemEntitlementOriginOTHER string = "OTHER"

	// RevokeItemEntitlementOriginPLAYSTATION captures enum value "PLAYSTATION"
	RevokeItemEntitlementOriginPLAYSTATION string = "PLAYSTATION"

	// RevokeItemEntitlementOriginSTEAM captures enum value "STEAM"
	RevokeItemEntitlementOriginSTEAM string = "STEAM"

	// RevokeItemEntitlementOriginSYSTEM captures enum value "SYSTEM"
	RevokeItemEntitlementOriginSYSTEM string = "SYSTEM"

	// RevokeItemEntitlementOriginTWITCH captures enum value "TWITCH"
	RevokeItemEntitlementOriginTWITCH string = "TWITCH"

	// RevokeItemEntitlementOriginXBOX captures enum value "XBOX"
	RevokeItemEntitlementOriginXBOX string = "XBOX"
)

// prop value enum
func (m *RevokeItem) validateEntitlementOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revokeItemTypeEntitlementOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

var revokeItemTypeItemIdentityTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM_ID", "ITEM_SKU"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revokeItemTypeItemIdentityTypePropEnum = append(revokeItemTypeItemIdentityTypePropEnum, v)
	}
}

const (

	// RevokeItemItemIdentityTypeITEMID captures enum value "ITEM_ID"
	RevokeItemItemIdentityTypeITEMID string = "ITEM_ID"

	// RevokeItemItemIdentityTypeITEMSKU captures enum value "ITEM_SKU"
	RevokeItemItemIdentityTypeITEMSKU string = "ITEM_SKU"
)

// prop value enum
func (m *RevokeItem) validateItemIdentityTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revokeItemTypeItemIdentityTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var revokeItemTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revokeItemTypeOriginPropEnum = append(revokeItemTypeOriginPropEnum, v)
	}
}

const (

	// RevokeItemOriginEPIC captures enum value "EPIC"
	RevokeItemOriginEPIC string = "EPIC"

	// RevokeItemOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	RevokeItemOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// RevokeItemOriginIOS captures enum value "IOS"
	RevokeItemOriginIOS string = "IOS"

	// RevokeItemOriginNINTENDO captures enum value "NINTENDO"
	RevokeItemOriginNINTENDO string = "NINTENDO"

	// RevokeItemOriginOCULUS captures enum value "OCULUS"
	RevokeItemOriginOCULUS string = "OCULUS"

	// RevokeItemOriginOTHER captures enum value "OTHER"
	RevokeItemOriginOTHER string = "OTHER"

	// RevokeItemOriginPLAYSTATION captures enum value "PLAYSTATION"
	RevokeItemOriginPLAYSTATION string = "PLAYSTATION"

	// RevokeItemOriginSTEAM captures enum value "STEAM"
	RevokeItemOriginSTEAM string = "STEAM"

	// RevokeItemOriginSYSTEM captures enum value "SYSTEM"
	RevokeItemOriginSYSTEM string = "SYSTEM"

	// RevokeItemOriginTWITCH captures enum value "TWITCH"
	RevokeItemOriginTWITCH string = "TWITCH"

	// RevokeItemOriginXBOX captures enum value "XBOX"
	RevokeItemOriginXBOX string = "XBOX"
)

// prop value enum
func (m *RevokeItem) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revokeItemTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RevokeItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevokeItem) UnmarshalBinary(b []byte) error {
	var res RevokeItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
