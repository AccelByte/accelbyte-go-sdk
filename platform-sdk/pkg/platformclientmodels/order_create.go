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

// OrderCreate Order create
//
// swagger:model Order create.
type OrderCreate struct {

	// currency code, should match currency code in item region data
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// Discounted price of order, this should match (item_discounted_price * quantity) ifitem discounted price is available, otherwise it should equal to (item_price * quantity)
	// Required: true
	// Format: int32
	DiscountedPrice *int32 `json:"discountedPrice"`

	// extra field to store external order information
	Ext interface{} `json:"ext,omitempty"`

	// item id
	// Required: true
	ItemID *string `json:"itemId"`

	// language value from language tag, allowed format: en, en-US.<p>Supported language tag : [RFC5646](https://gist.github.com/msikma/8912e62ed866778ff8cd) and [IETF](https://datahub.io/core/language-codes#resource-ietf-language-tags)</p>
	Language string `json:"language,omitempty"`

	// Price of order, should match (item_price * quantity)
	// Required: true
	// Format: int32
	Price *int32 `json:"price"`

	// Quantity of item, min is 1
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`

	// country value from ISO countries
	Region string `json:"region,omitempty"`

	// custom return url for real payment, user will be redirected to this url once payment is finished
	ReturnURL string `json:"returnUrl,omitempty"`

	// section Id, required if order consists of section item
	SectionID string `json:"sectionId,omitempty"`
}

// Validate validates this Order create
func (m *OrderCreate) Validate(formats strfmt.Registry) error {
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
	if err := m.validatePrice(formats); err != nil {
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

func (m *OrderCreate) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *OrderCreate) validateDiscountedPrice(formats strfmt.Registry) error {

	if err := validate.Required("discountedPrice", "body", m.DiscountedPrice); err != nil {
		return err
	}

	return nil
}

func (m *OrderCreate) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *OrderCreate) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

func (m *OrderCreate) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OrderCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderCreate) UnmarshalBinary(b []byte) error {
	var res OrderCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
