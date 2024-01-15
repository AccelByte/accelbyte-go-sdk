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

// RewardItem Reward item
//
// swagger:model Reward item.
type RewardItem struct {

	// duration
	// Format: int32
	Duration int32 `json:"duration,omitempty"`

	// enddate
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// identitytype
	// Enum: ['ITEM_ID', 'ITEM_SKU']
	IdentityType string `json:"identityType,omitempty"`

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// quantity
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`

	// sku
	Sku string `json:"sku,omitempty"`
}

// Validate validates this Reward item
func (m *RewardItem) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var rewardItemTypeIdentityTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM_ID", "ITEM_SKU"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		rewardItemTypeIdentityTypePropEnum = append(rewardItemTypeIdentityTypePropEnum, v)
	}
}

const (

	// RewardItemIdentityTypeITEMID captures enum value "ITEM_ID"
	RewardItemIdentityTypeITEMID string = "ITEM_ID"

	// RewardItemIdentityTypeITEMSKU captures enum value "ITEM_SKU"
	RewardItemIdentityTypeITEMSKU string = "ITEM_SKU"
)

// prop value enum
func (m *RewardItem) validateIdentityTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, rewardItemTypeIdentityTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RewardItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RewardItem) UnmarshalBinary(b []byte) error {
	var res RewardItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
