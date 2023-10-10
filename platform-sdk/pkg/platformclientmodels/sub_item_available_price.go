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

// SubItemAvailablePrice Sub item available price
//
// swagger:model Sub item available price.
type SubItemAvailablePrice struct {

	// current discounted price per item
	// Required: true
	// Format: int32
	DiscountedPrice *int32 `json:"discountedPrice"`

	// item id
	// Required: true
	ItemID *string `json:"itemId"`

	// item name
	// Required: true
	ItemName *string `json:"itemName"`

	// item sku
	// Required: true
	ItemSku *string `json:"itemSku"`

	// whether owns this durable item id, consumable item is always false or null.
	Owned bool `json:"owned"`

	// full price per item
	// Required: true
	// Format: int32
	Price *int32 `json:"price"`

	// quantity
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`
}

// Validate validates this Sub item available price
func (m *SubItemAvailablePrice) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDiscountedPrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemSku(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrice(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SubItemAvailablePrice) validateDiscountedPrice(formats strfmt.Registry) error {

	if err := validate.Required("discountedPrice", "body", m.DiscountedPrice); err != nil {
		return err
	}

	return nil
}

func (m *SubItemAvailablePrice) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *SubItemAvailablePrice) validateItemName(formats strfmt.Registry) error {

	if err := validate.Required("itemName", "body", m.ItemName); err != nil {
		return err
	}

	return nil
}

func (m *SubItemAvailablePrice) validateItemSku(formats strfmt.Registry) error {

	if err := validate.Required("itemSku", "body", m.ItemSku); err != nil {
		return err
	}

	return nil
}

func (m *SubItemAvailablePrice) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SubItemAvailablePrice) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SubItemAvailablePrice) UnmarshalBinary(b []byte) error {
	var res SubItemAvailablePrice
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
