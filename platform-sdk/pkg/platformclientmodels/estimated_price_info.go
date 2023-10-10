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

// EstimatedPriceInfo Estimated price info
//
// swagger:model Estimated price info.
type EstimatedPriceInfo struct {

	// estimated prices in different currency under region, this field maybe null or empty if have not any available price at this time, Possible reason: This item is not yet for sale, or miss set correct region currency for flexible bundle item.
	EstimatedPrices []*AvailablePrice `json:"estimatedPrices,omitempty"`

	// item Id
	// Required: true
	ItemID *string `json:"itemId"`

	// price region
	Region string `json:"region,omitempty"`
}

// Validate validates this Estimated price info
func (m *EstimatedPriceInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *EstimatedPriceInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *EstimatedPriceInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EstimatedPriceInfo) UnmarshalBinary(b []byte) error {
	var res EstimatedPriceInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
