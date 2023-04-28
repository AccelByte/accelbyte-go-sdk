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

// TimeLimitedBalance Time limited balance
//
// swagger:model Time limited balance.
type TimeLimitedBalance struct {

	// balance
	// Format: int64
	Balance int64 `json:"balance,omitempty"`

	// balance source
	BalanceSource string `json:"balanceSource,omitempty"`

	// balance expire time
	// Format: date-time
	ExpireAt *strfmt.DateTime `json:"expireAt,omitempty"`
}

// Validate validates this Time limited balance
func (m *TimeLimitedBalance) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *TimeLimitedBalance) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TimeLimitedBalance) UnmarshalBinary(b []byte) error {
	var res TimeLimitedBalance
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
