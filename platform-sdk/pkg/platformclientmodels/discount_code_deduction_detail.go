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

// DiscountCodeDeductionDetail Discount code deduction detail
//
// swagger:model Discount code deduction detail.
type DiscountCodeDeductionDetail struct {

	// used discount amount codes
	DiscountAmountCodes []*DiscountCodeInfo `json:"discountAmountCodes,omitempty"`

	// used discount percentage codes
	DiscountPercentageCodes []*DiscountCodeInfo `json:"discountPercentageCodes,omitempty"`

	// total deduction by amount
	// Format: int32
	TotalAmountDeduction int32 `json:"totalAmountDeduction,omitempty"`

	// total deduction
	// Format: int32
	TotalDeduction int32 `json:"totalDeduction,omitempty"`

	// total deduction by percentage
	// Format: int32
	TotalPercentageDeduction int32 `json:"totalPercentageDeduction,omitempty"`
}

// Validate validates this Discount code deduction detail
func (m *DiscountCodeDeductionDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DiscountCodeDeductionDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DiscountCodeDeductionDetail) UnmarshalBinary(b []byte) error {
	var res DiscountCodeDeductionDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
