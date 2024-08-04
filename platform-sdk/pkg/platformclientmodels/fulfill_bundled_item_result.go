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

// FulfillBundledItemResult Fulfill bundled item result
//
// swagger:model Fulfill bundled item result.
type FulfillBundledItemResult struct {

	// error
	Error string `json:"error,omitempty"`

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// itemsku
	ItemSku string `json:"itemSku,omitempty"`

	// quantity
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`
}

// Validate validates this Fulfill bundled item result
func (m *FulfillBundledItemResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FulfillBundledItemResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillBundledItemResult) UnmarshalBinary(b []byte) error {
	var res FulfillBundledItemResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
