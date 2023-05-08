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

// BoxItem Box item
//
// swagger:model Box item.
type BoxItem struct {

	// count
	// Format: int32
	Count int32 `json:"count,omitempty"`

	// box item will be expired after this duration (in seconds). Only available for OptionBox. Supported item type(s): COINS
	// Format: int32
	Duration int32 `json:"duration,omitempty"`

	// box item will be expired after this time. Only available for OptionBox. Supported item type(s): COINS
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// item id
	ItemID string `json:"itemId,omitempty"`

	// item sku
	ItemSku string `json:"itemSku,omitempty"`

	// item type
	ItemType string `json:"itemType,omitempty"`
}

// Validate validates this Box item
func (m *BoxItem) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BoxItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BoxItem) UnmarshalBinary(b []byte) error {
	var res BoxItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
