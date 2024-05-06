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

// DiscountConfig Discount config
//
// swagger:model Discount config.
type DiscountConfig struct {

	// applicable category path, it will be ignored if restrictType is None.
	Categories []*DiscountCategory `json:"categories,omitempty"`

	// currency code
	CurrencyCode string `json:"currencyCode,omitempty"`

	// currency namespace
	CurrencyNamespace string `json:"currencyNamespace,omitempty"`

	// discount percentage
	// Format: int32
	DiscountAmount int32 `json:"discountAmount,omitempty"`

	// discount percentage
	// Format: int32
	DiscountPercentage int32 `json:"discountPercentage,omitempty"`

	// discount type
	// Enum: ['AMOUNT', 'PERCENTAGE']
	DiscountType string `json:"discountType,omitempty"`

	// applicable items, it will be ignored if restrictType is None.
	Items []*DiscountItem `json:"items,omitempty"`

	// restrict type, default is no restrict
	// Enum: ['ITEMS_AND_CATEGORIES', 'NONE']
	RestrictType string `json:"restrictType,omitempty"`

	// stackable, whether can it be used in combination with other discount code, default is false.
	Stackable bool `json:"stackable"`
}

// Validate validates this Discount config
func (m *DiscountConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var discountConfigTypeDiscountTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AMOUNT", "PERCENTAGE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		discountConfigTypeDiscountTypePropEnum = append(discountConfigTypeDiscountTypePropEnum, v)
	}
}

const (

	// DiscountConfigDiscountTypeAMOUNT captures enum value "AMOUNT"
	DiscountConfigDiscountTypeAMOUNT string = "AMOUNT"

	// DiscountConfigDiscountTypePERCENTAGE captures enum value "PERCENTAGE"
	DiscountConfigDiscountTypePERCENTAGE string = "PERCENTAGE"
)

// prop value enum
func (m *DiscountConfig) validateDiscountTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, discountConfigTypeDiscountTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var discountConfigTypeRestrictTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEMS_AND_CATEGORIES", "NONE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		discountConfigTypeRestrictTypePropEnum = append(discountConfigTypeRestrictTypePropEnum, v)
	}
}

const (

	// DiscountConfigRestrictTypeITEMSANDCATEGORIES captures enum value "ITEMS_AND_CATEGORIES"
	DiscountConfigRestrictTypeITEMSANDCATEGORIES string = "ITEMS_AND_CATEGORIES"

	// DiscountConfigRestrictTypeNONE captures enum value "NONE"
	DiscountConfigRestrictTypeNONE string = "NONE"
)

// prop value enum
func (m *DiscountConfig) validateRestrictTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, discountConfigTypeRestrictTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DiscountConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DiscountConfig) UnmarshalBinary(b []byte) error {
	var res DiscountConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
