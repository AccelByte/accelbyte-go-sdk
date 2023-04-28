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

// OrderSyncResult Order sync result
//
// swagger:model Order sync result.
type OrderSyncResult struct {

	// nextevaluatedkey
	NextEvaluatedKey string `json:"nextEvaluatedKey,omitempty"`

	// orders
	Orders []*Order `json:"orders,omitempty"`
}

// Validate validates this Order sync result
func (m *OrderSyncResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *OrderSyncResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderSyncResult) UnmarshalBinary(b []byte) error {
	var res OrderSyncResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
