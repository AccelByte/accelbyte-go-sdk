// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// EntitlementLootBoxReward Entitlement loot box reward
//
// swagger:model Entitlement loot box reward.
type EntitlementLootBoxReward struct {

	// count
	// Format: int32
	Count int32 `json:"count,omitempty"`

	// item id
	ItemID string `json:"itemId,omitempty"`

	// item sku
	ItemSku string `json:"itemSku,omitempty"`
}

// Validate validates this Entitlement loot box reward
func (m *EntitlementLootBoxReward) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementLootBoxReward) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementLootBoxReward) UnmarshalBinary(b []byte) error {
	var res EntitlementLootBoxReward
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
