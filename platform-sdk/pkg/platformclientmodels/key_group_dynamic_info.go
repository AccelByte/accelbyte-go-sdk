// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// KeyGroupDynamicInfo Key group dynamic info
//
// swagger:model Key group dynamic info.
type KeyGroupDynamicInfo struct {

	// The available sale count, -1 means UNLIMITED
	// Required: true
	// Format: int32
	AvailableSaleCount *int32 `json:"availableSaleCount"`

	// The total quantity of this key group has
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`

	// The sale count
	// Required: true
	// Format: int32
	SaleCount *int32 `json:"saleCount"`
}

// Validate validates this Key group dynamic info
func (m *KeyGroupDynamicInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAvailableSaleCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSaleCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *KeyGroupDynamicInfo) validateAvailableSaleCount(formats strfmt.Registry) error {

	if err := validate.Required("availableSaleCount", "body", m.AvailableSaleCount); err != nil {
		return err
	}

	return nil
}

func (m *KeyGroupDynamicInfo) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

func (m *KeyGroupDynamicInfo) validateSaleCount(formats strfmt.Registry) error {

	if err := validate.Required("saleCount", "body", m.SaleCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *KeyGroupDynamicInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *KeyGroupDynamicInfo) UnmarshalBinary(b []byte) error {
	var res KeyGroupDynamicInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
