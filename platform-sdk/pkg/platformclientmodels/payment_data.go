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

// PaymentData Payment data
//
// swagger:model Payment data.
type PaymentData struct {

	// discountamount
	// Format: int32
	DiscountAmount int32 `json:"discountAmount,omitempty"`

	// discountcode
	DiscountCode string `json:"discountCode,omitempty"`

	// subtotalprice
	// Format: int32
	SubtotalPrice int32 `json:"subtotalPrice,omitempty"`

	// tax
	// Format: int32
	Tax int32 `json:"tax,omitempty"`

	// totalprice
	// Format: int32
	TotalPrice int32 `json:"totalPrice,omitempty"`
}

// Validate validates this Payment data
func (m *PaymentData) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PaymentData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentData) UnmarshalBinary(b []byte) error {
	var res PaymentData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
