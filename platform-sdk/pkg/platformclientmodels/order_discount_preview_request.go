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

// OrderDiscountPreviewRequest Order discount preview request
//
// swagger:model Order discount preview request.
type OrderDiscountPreviewRequest struct {

	// currency code, should match currency code in item region data
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// Discount codes, min size is 1, max size is 10notes: The same data will be auto merged, for example input discount code [111, 111] in request body, final discount code list should be 111
	// Unique: true
	DiscountCodes []string `json:"discountCodes"`

	// Discounted price of order, this should match (item_discounted_price * quantity) if" +         "item discounted price is available, otherwise it should equal to (item_price * quantity) if item is not flexible bundle, " +         "if item is flexible bundle, item discounted price should equal estimate discounted price.
	// Required: true
	// Format: int32
	DiscountedPrice *int32 `json:"discountedPrice"`

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

// Validate validates this Order discount preview request
func (m *OrderDiscountPreviewRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrencyCode(formats); err != nil {
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

func (m *OrderDiscountPreviewRequest) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *OrderDiscountPreviewRequest) validateDiscountedPrice(formats strfmt.Registry) error {

	if err := validate.Required("discountedPrice", "body", m.DiscountedPrice); err != nil {
		return err
	}

	return nil
}

func (m *OrderDiscountPreviewRequest) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *OrderDiscountPreviewRequest) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OrderDiscountPreviewRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderDiscountPreviewRequest) UnmarshalBinary(b []byte) error {
	var res OrderDiscountPreviewRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
