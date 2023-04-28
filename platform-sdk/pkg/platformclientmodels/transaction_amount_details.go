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

// TransactionAmountDetails Transaction amount details
//
// swagger:model Transaction amount details.
type TransactionAmountDetails struct {

	// amount
	// Format: int64
	Amount int64 `json:"amount,omitempty"`

	// expireat
	// Format: date-time
	ExpireAt *strfmt.DateTime `json:"expireAt,omitempty"`

	// origin
	Origin string `json:"origin,omitempty"`

	// walletid
	WalletID string `json:"walletId,omitempty"`
}

// Validate validates this Transaction amount details
func (m *TransactionAmountDetails) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *TransactionAmountDetails) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TransactionAmountDetails) UnmarshalBinary(b []byte) error {
	var res TransactionAmountDetails
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
