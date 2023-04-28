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

// WalletRevocationConfig Wallet revocation config
//
// swagger:model Wallet revocation config.
type WalletRevocationConfig struct {

	// will do revocation if enabled, otherwise will skip do revocation.
	Enabled bool `json:"enabled"`

	// wallet revocation strategy
	// Enum: ['ALWAYS_REVOKE', 'CUSTOM', 'REVOKE_OR_REPORT']
	Strategy string `json:"strategy,omitempty"`
}

// Validate validates this Wallet revocation config
func (m *WalletRevocationConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var walletRevocationConfigTypeStrategyPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ALWAYS_REVOKE", "CUSTOM", "REVOKE_OR_REPORT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		walletRevocationConfigTypeStrategyPropEnum = append(walletRevocationConfigTypeStrategyPropEnum, v)
	}
}

const (

	// WalletRevocationConfigStrategyALWAYSREVOKE captures enum value "ALWAYS_REVOKE"
	WalletRevocationConfigStrategyALWAYSREVOKE string = "ALWAYS_REVOKE"

	// WalletRevocationConfigStrategyCUSTOM captures enum value "CUSTOM"
	WalletRevocationConfigStrategyCUSTOM string = "CUSTOM"

	// WalletRevocationConfigStrategyREVOKEORREPORT captures enum value "REVOKE_OR_REPORT"
	WalletRevocationConfigStrategyREVOKEORREPORT string = "REVOKE_OR_REPORT"
)

// prop value enum
func (m *WalletRevocationConfig) validateStrategyEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, walletRevocationConfigTypeStrategyPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *WalletRevocationConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *WalletRevocationConfig) UnmarshalBinary(b []byte) error {
	var res WalletRevocationConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
