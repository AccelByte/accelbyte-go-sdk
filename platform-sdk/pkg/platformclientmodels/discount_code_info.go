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

// DiscountCodeInfo Discount code info
//
// swagger:model Discount code info.
type DiscountCodeInfo struct {

	// Campaign id
	CampaignID string `json:"campaignId,omitempty"`

	// Campaign name
	CampaignName string `json:"campaignName,omitempty"`

	// Code value.
	Code string `json:"code,omitempty"`

	// actual deduction
	// Format: int32
	Deduction int32 `json:"deduction,omitempty"`

	// Discount config
	DiscountConfig *DiscountConfig `json:"discountConfig,omitempty"`
}

// Validate validates this Discount code info
func (m *DiscountCodeInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DiscountCodeInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DiscountCodeInfo) UnmarshalBinary(b []byte) error {
	var res DiscountCodeInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
