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

// WalletConfigUpdate Wallet config update
//
// swagger:model Wallet config update.
type WalletConfigUpdate struct {

	// enablePaidForVCExpiration
	// Required: true
	EnablePaidForVCExpiration *bool `json:"enablePaidForVCExpiration"`
}

// Validate validates this Wallet config update
func (m *WalletConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnablePaidForVCExpiration(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *WalletConfigUpdate) validateEnablePaidForVCExpiration(formats strfmt.Registry) error {

	if err := validate.Required("enablePaidForVCExpiration", "body", m.EnablePaidForVCExpiration); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *WalletConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *WalletConfigUpdate) UnmarshalBinary(b []byte) error {
	var res WalletConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
