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

	// Discount codes, min size is 1, max size is 10notes: The same data will be auto merged, for example input discount code [111, 111] in request body, final discount code list should be 111
	// Unique: true
	DiscountCodes []string `json:"discountCodes"`

	// Discounted price of order, this should match (item_discounted_price * quantity) ifitem discounted price is available, otherwise it should equal to (item_price * quantity) if item is not flexible bundle, if item is flexible bundle, item discounted price should equal estimate discounted price.
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

	// Price of order, should match (item_price * quantity) if item is not flexible bundle, should use flexible estimate price if item is flexible bundle
	// Format: int32
	Price int32 `json:"price,omitempty"`

	// Quantity of item, min is 1, and will default use 1 and ignore this quantity field if item is flexible bundle
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
	if err := m.validateLanguage(formats); err != nil {
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

func (m *OrderCreate) validateLanguage(formats strfmt.Registry) error {

	if swag.IsZero(m.Language) { // not required
		return nil
	}

	if err := validate.Pattern("language", "body", string(m.Language), `^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$`); err != nil {
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
