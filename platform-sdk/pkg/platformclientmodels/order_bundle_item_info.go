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

// OrderBundleItemInfo Order bundle item info
//
// swagger:model Order bundle item info.
type OrderBundleItemInfo struct {

	// current available discounted price per item
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

	// current available price per item
	// Required: true
	// Format: int32
	Price *int32 `json:"price"`

	// Whether the item has been purchased in this order
	Purchased bool `json:"purchased"`

	// quantity
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`
}

// Validate validates this Order bundle item info
func (m *OrderBundleItemInfo) Validate(formats strfmt.Registry) error {
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

func (m *OrderBundleItemInfo) validateDiscountedPrice(formats strfmt.Registry) error {

	if err := validate.Required("discountedPrice", "body", m.DiscountedPrice); err != nil {
		return err
	}

	return nil
}

func (m *OrderBundleItemInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *OrderBundleItemInfo) validateItemName(formats strfmt.Registry) error {

	if err := validate.Required("itemName", "body", m.ItemName); err != nil {
		return err
	}

	return nil
}

func (m *OrderBundleItemInfo) validateItemSku(formats strfmt.Registry) error {

	if err := validate.Required("itemSku", "body", m.ItemSku); err != nil {
		return err
	}

	return nil
}

func (m *OrderBundleItemInfo) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OrderBundleItemInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderBundleItemInfo) UnmarshalBinary(b []byte) error {
	var res OrderBundleItemInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
