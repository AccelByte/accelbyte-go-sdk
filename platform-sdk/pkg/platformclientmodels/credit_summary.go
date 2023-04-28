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

// CreditSummary Credit summary
//
// swagger:model Credit summary.
type CreditSummary struct {

	// amount
	// Required: true
	// Format: int64
	Amount *int64 `json:"amount"`

	// currency code
	CurrencyCode string `json:"currencyCode,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// user id
	// Required: true
	UserID *string `json:"userId"`

	// wallet id
	// Required: true
	WalletID *string `json:"walletId"`
}

// Validate validates this Credit summary
func (m *CreditSummary) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAmount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateWalletID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CreditSummary) validateAmount(formats strfmt.Registry) error {

	if err := validate.Required("amount", "body", m.Amount); err != nil {
		return err
	}

	return nil
}

func (m *CreditSummary) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *CreditSummary) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

func (m *CreditSummary) validateWalletID(formats strfmt.Registry) error {

	if err := validate.Required("walletId", "body", m.WalletID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CreditSummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreditSummary) UnmarshalBinary(b []byte) error {
	var res CreditSummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
