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

// FulfillItemResult Fulfill item result
//
// swagger:model Fulfill item result.
type FulfillItemResult struct {

	// error
	Error string `json:"error,omitempty"`

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// itemsku
	ItemSku string `json:"itemSku,omitempty"`

	// items
	Items []*FulfillBundledItemResult `json:"items,omitempty"`
}

// Validate validates this Fulfill item result
func (m *FulfillItemResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FulfillItemResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillItemResult) UnmarshalBinary(b []byte) error {
	var res FulfillItemResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
