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

// RegionDataChange Region data change
//
// swagger:model Region data change.
type RegionDataChange struct {

	// itemidentities
	ItemIdentities []string `json:"itemIdentities,omitempty"`

	// Item Identity Type
	// Enum: ['ITEM_ID', 'ITEM_SKU']
	// Required: true
	ItemIdentityType *string `json:"itemIdentityType"`

	// region data map, key is region, value is region data list (This map will override existing keys instead of entire map)
	RegionData map[string][]RegionDataItem `json:"regionData,omitempty"`
}

// Validate validates this Region data change
func (m *RegionDataChange) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItemIdentityType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var regionDataChangeTypeItemIdentityTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM_ID", "ITEM_SKU"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		regionDataChangeTypeItemIdentityTypePropEnum = append(regionDataChangeTypeItemIdentityTypePropEnum, v)
	}
}

const (

	// RegionDataChangeItemIdentityTypeITEMID captures enum value "ITEM_ID"
	RegionDataChangeItemIdentityTypeITEMID string = "ITEM_ID"

	// RegionDataChangeItemIdentityTypeITEMSKU captures enum value "ITEM_SKU"
	RegionDataChangeItemIdentityTypeITEMSKU string = "ITEM_SKU"
)

// prop value enum
func (m *RegionDataChange) validateItemIdentityTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, regionDataChangeTypeItemIdentityTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RegionDataChange) validateItemIdentityType(formats strfmt.Registry) error {

	if err := validate.Required("itemIdentityType", "body", m.ItemIdentityType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemIdentityTypeEnum("itemIdentityType", "body", *m.ItemIdentityType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RegionDataChange) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RegionDataChange) UnmarshalBinary(b []byte) error {
	var res RegionDataChange
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
