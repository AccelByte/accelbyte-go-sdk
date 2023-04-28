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

// CurrencyWallet Currency wallet
//
// swagger:model Currency wallet.
type CurrencyWallet struct {

	// total balance, include time-limited balance
	// Required: true
	// Format: int64
	Balance *int64 `json:"balance"`

	// currency code
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// currency symbol
	// Required: true
	CurrencySymbol *string `json:"currencySymbol"`

	// wallet namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// total permanent balance
	// Format: int64
	TotalPermanentBalance int64 `json:"totalPermanentBalance,omitempty"`

	// total time limited balance
	// Format: int64
	TotalTimeLimitedBalance int64 `json:"totalTimeLimitedBalance,omitempty"`

	// user id
	// Required: true
	UserID *string `json:"userId"`

	// wallets balances info
	WalletInfos []*WalletInfo `json:"walletInfos,omitempty"`
}

// Validate validates this Currency wallet
func (m *CurrencyWallet) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBalance(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencySymbol(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CurrencyWallet) validateBalance(formats strfmt.Registry) error {

	if err := validate.Required("balance", "body", m.Balance); err != nil {
		return err
	}

	return nil
}

func (m *CurrencyWallet) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *CurrencyWallet) validateCurrencySymbol(formats strfmt.Registry) error {

	if err := validate.Required("currencySymbol", "body", m.CurrencySymbol); err != nil {
		return err
	}

	return nil
}

func (m *CurrencyWallet) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *CurrencyWallet) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CurrencyWallet) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CurrencyWallet) UnmarshalBinary(b []byte) error {
	var res CurrencyWallet
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
