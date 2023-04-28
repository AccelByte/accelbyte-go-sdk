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

// OrderSummary Order summary
//
// swagger:model Order summary.
type OrderSummary struct {

	// purchase currency
	Currency *CurrencySummary `json:"currency,omitempty"`

	// order custom properties
	Ext interface{} `json:"ext,omitempty"`

	// free
	Free bool `json:"free"`
}

// Validate validates this Order summary
func (m *OrderSummary) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *OrderSummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderSummary) UnmarshalBinary(b []byte) error {
	var res OrderSummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
