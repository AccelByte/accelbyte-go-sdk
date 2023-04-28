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

// RevocationConfigUpdate Revocation config update
//
// swagger:model Revocation config update.
type RevocationConfigUpdate struct {

	// entitlement revocation config
	Entitlement *EntitlementRevocationConfig `json:"entitlement,omitempty"`

	// wallet revocation config
	Wallet *WalletRevocationConfig `json:"wallet,omitempty"`
}

// Validate validates this Revocation config update
func (m *RevocationConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RevocationConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevocationConfigUpdate) UnmarshalBinary(b []byte) error {
	var res RevocationConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
