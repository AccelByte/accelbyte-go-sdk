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

// WalletConfigInfo Wallet config info
//
// swagger:model Wallet config info.
type WalletConfigInfo struct {

	// enablePaidForVCExpiration
	EnablePaidForVCExpiration bool `json:"enablePaidForVCExpiration"`

	// namespace
	Namespace string `json:"namespace,omitempty"`
}

// Validate validates this Wallet config info
func (m *WalletConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *WalletConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *WalletConfigInfo) UnmarshalBinary(b []byte) error {
	var res WalletConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
