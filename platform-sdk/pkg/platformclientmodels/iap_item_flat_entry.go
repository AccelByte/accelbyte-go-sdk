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

// IAPItemFlatEntry IAP item flat entry
//
// swagger:model IAP item flat entry.
type IAPItemFlatEntry struct {

	// item id or sku
	ItemIdentity string `json:"itemIdentity,omitempty"`

	// item identity type
	// Enum: ['ITEM_ID', 'ITEM_SKU']
	ItemIdentityType string `json:"itemIdentityType,omitempty"`

	// iap platform
	// Enum: ['APPLE', 'EPICGAMES', 'GOOGLE', 'PLAYSTATION', 'STADIA', 'STEAM', 'TWITCH', 'XBOX']
	Platform string `json:"platform,omitempty"`

	// IAP Platform production id related item id
	PlatformProductID string `json:"platformProductId,omitempty"`
}

// Validate validates this IAP item flat entry
func (m *IAPItemFlatEntry) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var iapItemFlatEntryTypeItemIdentityTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM_ID", "ITEM_SKU"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapItemFlatEntryTypeItemIdentityTypePropEnum = append(iapItemFlatEntryTypeItemIdentityTypePropEnum, v)
	}
}

const (

	// IAPItemFlatEntryItemIdentityTypeITEMID captures enum value "ITEM_ID"
	IAPItemFlatEntryItemIdentityTypeITEMID string = "ITEM_ID"

	// IAPItemFlatEntryItemIdentityTypeITEMSKU captures enum value "ITEM_SKU"
	IAPItemFlatEntryItemIdentityTypeITEMSKU string = "ITEM_SKU"
)

// prop value enum
func (m *IAPItemFlatEntry) validateItemIdentityTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapItemFlatEntryTypeItemIdentityTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var iapItemFlatEntryTypePlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APPLE", "EPICGAMES", "GOOGLE", "PLAYSTATION", "STADIA", "STEAM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapItemFlatEntryTypePlatformPropEnum = append(iapItemFlatEntryTypePlatformPropEnum, v)
	}
}

const (

	// IAPItemFlatEntryPlatformAPPLE captures enum value "APPLE"
	IAPItemFlatEntryPlatformAPPLE string = "APPLE"

	// IAPItemFlatEntryPlatformEPICGAMES captures enum value "EPICGAMES"
	IAPItemFlatEntryPlatformEPICGAMES string = "EPICGAMES"

	// IAPItemFlatEntryPlatformGOOGLE captures enum value "GOOGLE"
	IAPItemFlatEntryPlatformGOOGLE string = "GOOGLE"

	// IAPItemFlatEntryPlatformPLAYSTATION captures enum value "PLAYSTATION"
	IAPItemFlatEntryPlatformPLAYSTATION string = "PLAYSTATION"

	// IAPItemFlatEntryPlatformSTADIA captures enum value "STADIA"
	IAPItemFlatEntryPlatformSTADIA string = "STADIA"

	// IAPItemFlatEntryPlatformSTEAM captures enum value "STEAM"
	IAPItemFlatEntryPlatformSTEAM string = "STEAM"

	// IAPItemFlatEntryPlatformTWITCH captures enum value "TWITCH"
	IAPItemFlatEntryPlatformTWITCH string = "TWITCH"

	// IAPItemFlatEntryPlatformXBOX captures enum value "XBOX"
	IAPItemFlatEntryPlatformXBOX string = "XBOX"
)

// prop value enum
func (m *IAPItemFlatEntry) validatePlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapItemFlatEntryTypePlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *IAPItemFlatEntry) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *IAPItemFlatEntry) UnmarshalBinary(b []byte) error {
	var res IAPItemFlatEntry
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
