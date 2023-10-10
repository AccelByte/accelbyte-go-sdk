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

// RegionDataItemDTO Region data item DTO
//
// swagger:model Region data item DTO.
type RegionDataItemDTO struct {

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

	// ExpireAt
	// Format: date-time
	ExpireAt *strfmt.DateTime `json:"expireAt,omitempty"`

	// price value, set to 0 if it's free, if it's -1 means it's dynamic price and need to call getEstimatedPrices endpoint to get price.
	// Required: true
	// Format: int32
	Price *int32 `json:"price"`

	// PurchaseAt
	// Format: date-time
	PurchaseAt *strfmt.DateTime `json:"purchaseAt,omitempty"`

	// trial price, required while fixedTrialCycles set, should >=0 and <= price, default same as trialPrice
	// Format: int32
	TrialPrice int32 `json:"trialPrice,omitempty"`
}

// Validate validates this Region data item DTO
func (m *RegionDataItemDTO) Validate(formats strfmt.Registry) error {
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
	if err := m.validatePrice(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RegionDataItemDTO) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *RegionDataItemDTO) validateCurrencyNamespace(formats strfmt.Registry) error {

	if err := validate.Required("currencyNamespace", "body", m.CurrencyNamespace); err != nil {
		return err
	}

	return nil
}

var regionDataItemDtoTypeCurrencyTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["REAL", "VIRTUAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		regionDataItemDtoTypeCurrencyTypePropEnum = append(regionDataItemDtoTypeCurrencyTypePropEnum, v)
	}
}

const (

	// RegionDataItemDTOCurrencyTypeREAL captures enum value "REAL"
	RegionDataItemDTOCurrencyTypeREAL string = "REAL"

	// RegionDataItemDTOCurrencyTypeVIRTUAL captures enum value "VIRTUAL"
	RegionDataItemDTOCurrencyTypeVIRTUAL string = "VIRTUAL"
)

// prop value enum
func (m *RegionDataItemDTO) validateCurrencyTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, regionDataItemDtoTypeCurrencyTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RegionDataItemDTO) validateCurrencyType(formats strfmt.Registry) error {

	if err := validate.Required("currencyType", "body", m.CurrencyType); err != nil {
		return err
	}

	// value enum
	if err := m.validateCurrencyTypeEnum("currencyType", "body", *m.CurrencyType); err != nil {
		return err
	}

	return nil
}

func (m *RegionDataItemDTO) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RegionDataItemDTO) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RegionDataItemDTO) UnmarshalBinary(b []byte) error {
	var res RegionDataItemDTO
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
