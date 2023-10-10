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

// RegionDataItem Region data item
//
// swagger:model Region data item.
type RegionDataItem struct {

	// currency code
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// currency namespace
	// Required: true
	CurrencyNamespace *string `json:"currencyNamespace"`

	// currency type
	// Enum: ['REAL', 'VIRTUAL']
	// Required: true
	CurrencyType *string `json:"currencyType"`

	// Discount amount, min is 0, max is price
	// Format: int32
	DiscountAmount int32 `json:"discountAmount,omitempty"`

	// Discount expire date time
	// Format: date-time
	DiscountExpireAt *strfmt.DateTime `json:"discountExpireAt,omitempty"`

	// Discount percentage，default is 0, if this value is not 0, it will override the discountAmount
	// Format: int32
	DiscountPercentage int32 `json:"discountPercentage,omitempty"`

	// DiscountPurchaseAt
	// Format: date-time
	DiscountPurchaseAt *strfmt.DateTime `json:"discountPurchaseAt,omitempty"`

	// discountedprice
	// Format: int32
	DiscountedPrice int32 `json:"discountedPrice,omitempty"`

	// ExpireAt
	// Format: date-time
	ExpireAt *strfmt.DateTime `json:"expireAt,omitempty"`

	// price value, set to 0 if it's free, if it's -1 means it's dynamic price and need to call getEstimatedPrices endpoint to get price.
	// Format: int32
	Price int32 `json:"price,omitempty"`

	// PurchaseAt
	// Format: date-time
	PurchaseAt *strfmt.DateTime `json:"purchaseAt,omitempty"`

	// trial price, required while fixedTrialCycles set, should >=0 and <= price, default same as trialPrice
	// Format: int32
	TrialPrice int32 `json:"trialPrice,omitempty"`
}

// Validate validates this Region data item
func (m *RegionDataItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencyNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencyType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RegionDataItem) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *RegionDataItem) validateCurrencyNamespace(formats strfmt.Registry) error {

	if err := validate.Required("currencyNamespace", "body", m.CurrencyNamespace); err != nil {
		return err
	}

	return nil
}

var regionDataItemTypeCurrencyTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["REAL", "VIRTUAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		regionDataItemTypeCurrencyTypePropEnum = append(regionDataItemTypeCurrencyTypePropEnum, v)
	}
}

const (

	// RegionDataItemCurrencyTypeREAL captures enum value "REAL"
	RegionDataItemCurrencyTypeREAL string = "REAL"

	// RegionDataItemCurrencyTypeVIRTUAL captures enum value "VIRTUAL"
	RegionDataItemCurrencyTypeVIRTUAL string = "VIRTUAL"
)

// prop value enum
func (m *RegionDataItem) validateCurrencyTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, regionDataItemTypeCurrencyTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RegionDataItem) validateCurrencyType(formats strfmt.Registry) error {

	if err := validate.Required("currencyType", "body", m.CurrencyType); err != nil {
		return err
	}

	// value enum
	if err := m.validateCurrencyTypeEnum("currencyType", "body", *m.CurrencyType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RegionDataItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RegionDataItem) UnmarshalBinary(b []byte) error {
	var res RegionDataItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
