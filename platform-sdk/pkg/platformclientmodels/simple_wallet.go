// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// SimpleWallet Simple wallet
//
// swagger:model Simple wallet.
type SimpleWallet struct {

	// balance
	// Format: int64
	Balance int64 `json:"balance,omitempty"`

	// balanceorigin
	BalanceOrigin string `json:"balanceOrigin,omitempty"`

	// currencycode
	CurrencyCode string `json:"currencyCode,omitempty"`

	// timelimitedbalances
	TimeLimitedBalances []*TimeLimitedBalance `json:"timeLimitedBalances,omitempty"`

	// walletid
	WalletID string `json:"walletId,omitempty"`
}

// Validate validates this Simple wallet
func (m *SimpleWallet) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *SimpleWallet) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SimpleWallet) UnmarshalBinary(b []byte) error {
	var res SimpleWallet
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
