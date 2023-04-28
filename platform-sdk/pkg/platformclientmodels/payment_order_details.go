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

// PaymentOrderDetails Payment order details
//
// swagger:model Payment order details.
type PaymentOrderDetails struct {

	// charging
	// Required: true
	Charging *bool `json:"charging"`

	// currency code
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// currency symbol
	// Required: true
	CurrencySymbol *string `json:"currencySymbol"`

	// Order description
	Description string `json:"description,omitempty"`

	// Payment user display name
	DisplayName string `json:"displayName,omitempty"`

	// Payment order price
	// Required: true
	Price *string `json:"price"`

	// Payment user region
	Region string `json:"region,omitempty"`

	// isSandbox, indicate if order is sandbox
	// Required: true
	Sandbox *bool `json:"sandbox"`

	// Order title
	// Required: true
	Title *string `json:"title"`
}

// Validate validates this Payment order details
func (m *PaymentOrderDetails) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCharging(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencySymbol(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSandbox(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentOrderDetails) validateCharging(formats strfmt.Registry) error {

	if err := validate.Required("charging", "body", m.Charging); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderDetails) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderDetails) validateCurrencySymbol(formats strfmt.Registry) error {

	if err := validate.Required("currencySymbol", "body", m.CurrencySymbol); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderDetails) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderDetails) validateSandbox(formats strfmt.Registry) error {

	if err := validate.Required("sandbox", "body", m.Sandbox); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderDetails) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentOrderDetails) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderDetails) UnmarshalBinary(b []byte) error {
	var res PaymentOrderDetails
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
