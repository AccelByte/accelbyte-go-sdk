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

// PaymentOrderSyncResult Payment order sync result
//
// swagger:model Payment order sync result.
type PaymentOrderSyncResult struct {

	// nextevaluatedkey
	NextEvaluatedKey string `json:"nextEvaluatedKey,omitempty"`

	// paymentorders
	PaymentOrders []*PaymentOrder `json:"paymentOrders,omitempty"`
}

// Validate validates this Payment order sync result
func (m *PaymentOrderSyncResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PaymentOrderSyncResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderSyncResult) UnmarshalBinary(b []byte) error {
	var res PaymentOrderSyncResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
