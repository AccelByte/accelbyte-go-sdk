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

// IAPItemEntry IAP item entry
//
// swagger:model IAP item entry.
type IAPItemEntry struct {

	// item id or sku
	ItemIdentity string `json:"itemIdentity,omitempty"`

	// item identity type
	// Enum: ['ITEM_ID', 'ITEM_SKU']
	ItemIdentityType string `json:"itemIdentityType,omitempty"`

	// IAP Platform production ids related item id
	PlatformProductIDMap map[string]string `json:"platformProductIdMap,omitempty"`
}

// Validate validates this IAP item entry
func (m *IAPItemEntry) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var iapItemEntryTypeItemIdentityTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM_ID", "ITEM_SKU"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapItemEntryTypeItemIdentityTypePropEnum = append(iapItemEntryTypeItemIdentityTypePropEnum, v)
	}
}

const (

	// IAPItemEntryItemIdentityTypeITEMID captures enum value "ITEM_ID"
	IAPItemEntryItemIdentityTypeITEMID string = "ITEM_ID"

	// IAPItemEntryItemIdentityTypeITEMSKU captures enum value "ITEM_SKU"
	IAPItemEntryItemIdentityTypeITEMSKU string = "ITEM_SKU"
)

// prop value enum
func (m *IAPItemEntry) validateItemIdentityTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapItemEntryTypeItemIdentityTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *IAPItemEntry) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *IAPItemEntry) UnmarshalBinary(b []byte) error {
	var res IAPItemEntry
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
