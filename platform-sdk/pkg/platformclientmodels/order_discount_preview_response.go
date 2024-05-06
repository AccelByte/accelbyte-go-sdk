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

// OrderDiscountPreviewResponse Order discount preview response
//
// swagger:model Order discount preview response.
type OrderDiscountPreviewResponse struct {

	// Total of deduction, Order final price should be discounted price - deduction.
	// Required: true
	// Format: int32
	Deduction *int32 `json:"deduction"`

	// Deduction details, include every discount code actual deducted value
	DeductionDetails []*DeductionDetail `json:"deductionDetails,omitempty"`

	// Discounted price of order.
	// Required: true
	// Format: int32
	DiscountedPrice *int32 `json:"discountedPrice"`

	// Final price.
	// Format: int32
	FinalPrice int32 `json:"finalPrice,omitempty"`

	// item id
	// Required: true
	ItemID *string `json:"itemId"`

	// Price of order, should match (item_price * quantity) if item is not flexible bundle, should use flexible estimate price if item is flexible bundle
	// Format: int32
	Price int32 `json:"price,omitempty"`

	// Quantity of item, min is 1, and will default use 1 and ignore this quantity field if item is flexible bundle
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`
}

// Validate validates this Order discount preview response
func (m *OrderDiscountPreviewResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeduction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDiscountedPrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OrderDiscountPreviewResponse) validateDeduction(formats strfmt.Registry) error {

	if err := validate.Required("deduction", "body", m.Deduction); err != nil {
		return err
	}

	return nil
}

func (m *OrderDiscountPreviewResponse) validateDiscountedPrice(formats strfmt.Registry) error {

	if err := validate.Required("discountedPrice", "body", m.DiscountedPrice); err != nil {
		return err
	}

	return nil
}

func (m *OrderDiscountPreviewResponse) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *OrderDiscountPreviewResponse) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OrderDiscountPreviewResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderDiscountPreviewResponse) UnmarshalBinary(b []byte) error {
	var res OrderDiscountPreviewResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
