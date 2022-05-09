// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PlatformWallet platform wallet
//
// swagger:model PlatformWallet
type PlatformWallet struct {

	// total balance, include effective time-limited balance
	// Required: true
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

	// user id
	// Required: true
	UserID *string `json:"userId"`

	// wallets balances info
	WalletInfos []*WalletInfo `json:"walletInfos"`

	// wallet status
	// Enum: [ACTIVE INACTIVE]
	WalletStatus string `json:"walletStatus,omitempty"`
}

// Validate validates this platform wallet
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

	if err := m.validateWalletInfos(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateWalletStatus(formats); err != nil {
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

func (m *PlatformWallet) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

func (m *PlatformWallet) validateWalletInfos(formats strfmt.Registry) error {

	if swag.IsZero(m.WalletInfos) { // not required
		return nil
	}

	for i := 0; i < len(m.WalletInfos); i++ {
		if swag.IsZero(m.WalletInfos[i]) { // not required
			continue
		}

		if m.WalletInfos[i] != nil {
			if err := m.WalletInfos[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("walletInfos" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

var platformWalletTypeWalletStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE","INACTIVE"]`), &res); err != nil {
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

func (m *PlatformWallet) validateWalletStatus(formats strfmt.Registry) error {

	if swag.IsZero(m.WalletStatus) { // not required
		return nil
	}

	// value enum
	if err := m.validateWalletStatusEnum("walletStatus", "body", m.WalletStatus); err != nil {
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
