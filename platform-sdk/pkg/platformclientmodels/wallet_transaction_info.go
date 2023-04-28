// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// WalletTransactionInfo Wallet transaction info
//
// swagger:model Wallet transaction info.
type WalletTransactionInfo struct {

	// Transaction amount, it is absolute value.
	// Required: true
	// Format: int64
	Amount *int64 `json:"amount"`

	// The source of credit
	BalanceSource string `json:"balanceSource,omitempty"`

	// Transaction created time
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// Transaction currency code
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// Wallet namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// Operator userId or ClientId
	// Required: true
	Operator *string `json:"operator"`

	// Reason of the transaction
	Reason string `json:"reason,omitempty"`

	// Transaction amount details
	TransactionAmountDetails []*TransactionAmountDetails `json:"transactionAmountDetails,omitempty"`

	// Transaction updated time
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// Wallet owner's userId
	// Required: true
	UserID *string `json:"userId"`

	// Action type, remove expired limited time balance will not have wallet action.
	// Enum: ['CREDIT', 'DEBIT', 'PAYMENT']
	WalletAction string `json:"walletAction,omitempty"`
}

// Validate validates this Wallet transaction info
func (m *WalletTransactionInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAmount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOperator(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

func (m *WalletTransactionInfo) validateAmount(formats strfmt.Registry) error {

	if err := validate.Required("amount", "body", m.Amount); err != nil {
		return err
	}

	return nil
}

func (m *WalletTransactionInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *WalletTransactionInfo) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *WalletTransactionInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *WalletTransactionInfo) validateOperator(formats strfmt.Registry) error {

	if err := validate.Required("operator", "body", m.Operator); err != nil {
		return err
	}

	return nil
}

func (m *WalletTransactionInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *WalletTransactionInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

var walletTransactionInfoTypeWalletActionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CREDIT", "DEBIT", "PAYMENT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		walletTransactionInfoTypeWalletActionPropEnum = append(walletTransactionInfoTypeWalletActionPropEnum, v)
	}
}

const (

	// WalletTransactionInfoWalletActionCREDIT captures enum value "CREDIT"
	WalletTransactionInfoWalletActionCREDIT string = "CREDIT"

	// WalletTransactionInfoWalletActionDEBIT captures enum value "DEBIT"
	WalletTransactionInfoWalletActionDEBIT string = "DEBIT"

	// WalletTransactionInfoWalletActionPAYMENT captures enum value "PAYMENT"
	WalletTransactionInfoWalletActionPAYMENT string = "PAYMENT"
)

// prop value enum
func (m *WalletTransactionInfo) validateWalletActionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, walletTransactionInfoTypeWalletActionPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *WalletTransactionInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *WalletTransactionInfo) UnmarshalBinary(b []byte) error {
	var res WalletTransactionInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
