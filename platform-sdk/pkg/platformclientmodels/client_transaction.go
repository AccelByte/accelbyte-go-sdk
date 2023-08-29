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

// ClientTransaction Client transaction
//
// swagger:model Client transaction.
type ClientTransaction struct {

	// amountconsumed
	// Format: int32
	AmountConsumed int32 `json:"amountConsumed,omitempty"`

	// clienttransactionid
	ClientTransactionID string `json:"clientTransactionId,omitempty"`
}

// Validate validates this Client transaction
func (m *ClientTransaction) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ClientTransaction) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientTransaction) UnmarshalBinary(b []byte) error {
	var res ClientTransaction
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
