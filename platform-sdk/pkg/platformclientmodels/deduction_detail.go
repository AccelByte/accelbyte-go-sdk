// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// DeductionDetail Deduction detail
//
// swagger:model Deduction detail.
type DeductionDetail struct {

	// Deduction type, currently only support discount code
	// Enum: ['DISCOUNT_CODE', 'PAYMENT_DISCOUNT_CODE']
	DeductionType string `json:"deductionType,omitempty"`

	// Discount code deduction details
	DiscountCodeDeductionDetail *DiscountCodeDeductionDetail `json:"discountCodeDeductionDetail,omitempty"`

	// Discount provider name
	DiscountProviderName string `json:"discountProviderName,omitempty"`
}

// Validate validates this Deduction detail
func (m *DeductionDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var deductionDetailTypeDeductionTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DISCOUNT_CODE", "PAYMENT_DISCOUNT_CODE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		deductionDetailTypeDeductionTypePropEnum = append(deductionDetailTypeDeductionTypePropEnum, v)
	}
}

const (

	// DeductionDetailDeductionTypeDISCOUNTCODE captures enum value "DISCOUNT_CODE"
	DeductionDetailDeductionTypeDISCOUNTCODE string = "DISCOUNT_CODE"

	// DeductionDetailDeductionTypePAYMENTDISCOUNTCODE captures enum value "PAYMENT_DISCOUNT_CODE"
	DeductionDetailDeductionTypePAYMENTDISCOUNTCODE string = "PAYMENT_DISCOUNT_CODE"
)

// prop value enum
func (m *DeductionDetail) validateDeductionTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, deductionDetailTypeDeductionTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DeductionDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DeductionDetail) UnmarshalBinary(b []byte) error {
	var res DeductionDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
