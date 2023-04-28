// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RedeemableItem Redeemable item
//
// swagger:model Redeemable item.
type RedeemableItem struct {

	// Extra subscription days if the item is a subscription, 0 by default
	// Format: int32
	ExtraSubscriptionDays int32 `json:"extraSubscriptionDays,omitempty"`

	// The redeemable item id
	// Required: true
	ItemID *string `json:"itemId"`

	// The redeemable item name
	// Required: true
	ItemName *string `json:"itemName"`

	// The redeemable item quantity, 1 for default
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`
}

// Validate validates this Redeemable item
func (m *RedeemableItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RedeemableItem) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *RedeemableItem) validateItemName(formats strfmt.Registry) error {

	if err := validate.Required("itemName", "body", m.ItemName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RedeemableItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RedeemableItem) UnmarshalBinary(b []byte) error {
	var res RedeemableItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
