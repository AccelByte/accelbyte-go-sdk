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

// PlatformWallet Platform wallet
//
// swagger:model Platform wallet.
type PlatformWallet struct {

	// total balance, include effective time-limited balance
	// Required: true
	// Format: int64
	Balance *int64 `json:"balance"`

	// currency code
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// currency symbol
	// Required: true
	CurrencySymbol *string `json:"currencySymbol"`

	// id
	ID string `json:"id,omitempty"`

	// platform wallet namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// status
	// Enum: ['ACTIVE', 'INACTIVE']
	Status string `json:"status,omitempty"`

	// transaction id
	TransactionID string `json:"transactionId,omitempty"`

	// user id
	// Required: true
	UserID *string `json:"userId"`

	// wallets balances info
	WalletInfos []*WalletInfo `json:"walletInfos,omitempty"`

	// wallet status will be deprecated in the feature, pls use status field.
	// Enum: ['ACTIVE', 'INACTIVE']
	WalletStatus string `json:"walletStatus,omitempty"`
}

// Validate validates this Platform wallet
func (m *PlatformWallet) Validate(formats strfmt.Registry) error {
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

func (m *PlatformWallet) validateBalance(formats strfmt.Registry) error {

	if err := validate.Required("balance", "body", m.Balance); err != nil {
		return err
	}

	return nil
}

func (m *PlatformWallet) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *PlatformWallet) validateCurrencySymbol(formats strfmt.Registry) error {

	if err := validate.Required("currencySymbol", "body", m.CurrencySymbol); err != nil {
		return err
	}

	return nil
}

func (m *PlatformWallet) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var platformWalletTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		platformWalletTypeStatusPropEnum = append(platformWalletTypeStatusPropEnum, v)
	}
}

const (

	// PlatformWalletStatusACTIVE captures enum value "ACTIVE"
	PlatformWalletStatusACTIVE string = "ACTIVE"

	// PlatformWalletStatusINACTIVE captures enum value "INACTIVE"
	PlatformWalletStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *PlatformWallet) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, platformWalletTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PlatformWallet) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

var platformWalletTypeWalletStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		platformWalletTypeWalletStatusPropEnum = append(platformWalletTypeWalletStatusPropEnum, v)
	}
}

const (

	// PlatformWalletWalletStatusACTIVE captures enum value "ACTIVE"
	PlatformWalletWalletStatusACTIVE string = "ACTIVE"

	// PlatformWalletWalletStatusINACTIVE captures enum value "INACTIVE"
	PlatformWalletWalletStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *PlatformWallet) validateWalletStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, platformWalletTypeWalletStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PlatformWallet) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlatformWallet) UnmarshalBinary(b []byte) error {
	var res PlatformWallet
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
