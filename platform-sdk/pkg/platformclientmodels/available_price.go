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

// AvailablePrice Available price
//
// swagger:model Available price.
type AvailablePrice struct {

	// currency code
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// currency namespace
	// Required: true
	CurrencyNamespace *string `json:"currencyNamespace"`

	// Discount expire date time
	// Format: date-time
	DiscountExpireAt *strfmt.DateTime `json:"discountExpireAt,omitempty"`

	// DiscountPurchaseAt
	// Format: date-time
	DiscountPurchaseAt *strfmt.DateTime `json:"discountPurchaseAt,omitempty"`

	// current available discounted price, only calc total discounted price with un-owned durable items if it's a flexible bundle item.
	// Required: true
	// Format: int32
	DiscountedPrice *int32 `json:"discountedPrice"`

	// ExpireAt
	// Format: date-time
	ExpireAt *strfmt.DateTime `json:"expireAt,omitempty"`

	// current full price, only calc total price with un-owned durable items if it's a flexible bundle item.
	// Required: true
	// Format: int32
	Price *int32 `json:"price"`

	// only have value when item is flexible bundle and the price is within the effective range
	PriceDetails []*SubItemAvailablePrice `json:"priceDetails,omitempty"`

	// PurchaseAt
	// Format: date-time
	PurchaseAt *strfmt.DateTime `json:"purchaseAt,omitempty"`
}

// Validate validates this Available price
func (m *AvailablePrice) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencyNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDiscountedPrice(formats); err != nil {
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

func (m *AvailablePrice) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *AvailablePrice) validateCurrencyNamespace(formats strfmt.Registry) error {

	if err := validate.Required("currencyNamespace", "body", m.CurrencyNamespace); err != nil {
		return err
	}

	return nil
}

func (m *AvailablePrice) validateDiscountedPrice(formats strfmt.Registry) error {

	if err := validate.Required("discountedPrice", "body", m.DiscountedPrice); err != nil {
		return err
	}

	return nil
}

func (m *AvailablePrice) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AvailablePrice) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AvailablePrice) UnmarshalBinary(b []byte) error {
	var res AvailablePrice
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
