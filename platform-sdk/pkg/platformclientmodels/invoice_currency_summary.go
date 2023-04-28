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

// InvoiceCurrencySummary Invoice currency summary
//
// swagger:model Invoice currency summary.
type InvoiceCurrencySummary struct {

	// currency
	// Required: true
	Currency *CurrencySummary `json:"currency"`

	// sales volume
	// Required: true
	// Format: int64
	SalesVolume *int64 `json:"salesVolume"`

	// subtotal price
	// Required: true
	// Format: int64
	SubtotalPrice *int64 `json:"subtotalPrice"`

	// total price
	// Required: true
	// Format: int64
	TotalPrice *int64 `json:"totalPrice"`

	// total tax
	// Required: true
	// Format: int64
	TotalTax *int64 `json:"totalTax"`
}

// Validate validates this Invoice currency summary
func (m *InvoiceCurrencySummary) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrency(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSalesVolume(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubtotalPrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalPrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalTax(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *InvoiceCurrencySummary) validateCurrency(formats strfmt.Registry) error {

	if err := validate.Required("currency", "body", m.Currency); err != nil {
		return err
	}

	if m.Currency != nil {
		if err := m.Currency.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("currency")
			}
			return err
		}
	}

	return nil
}

func (m *InvoiceCurrencySummary) validateSalesVolume(formats strfmt.Registry) error {

	if err := validate.Required("salesVolume", "body", m.SalesVolume); err != nil {
		return err
	}

	return nil
}

func (m *InvoiceCurrencySummary) validateSubtotalPrice(formats strfmt.Registry) error {

	if err := validate.Required("subtotalPrice", "body", m.SubtotalPrice); err != nil {
		return err
	}

	return nil
}

func (m *InvoiceCurrencySummary) validateTotalPrice(formats strfmt.Registry) error {

	if err := validate.Required("totalPrice", "body", m.TotalPrice); err != nil {
		return err
	}

	return nil
}

func (m *InvoiceCurrencySummary) validateTotalTax(formats strfmt.Registry) error {

	if err := validate.Required("totalTax", "body", m.TotalTax); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *InvoiceCurrencySummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *InvoiceCurrencySummary) UnmarshalBinary(b []byte) error {
	var res InvoiceCurrencySummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
