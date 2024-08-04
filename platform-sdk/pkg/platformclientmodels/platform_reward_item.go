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

// PlatformRewardItem Platform reward item
//
// swagger:model Platform reward item.
type PlatformRewardItem struct {

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// itemname
	ItemName string `json:"itemName,omitempty"`

	// itemsku
	ItemSku string `json:"itemSku,omitempty"`

	// itemtype
	ItemType string `json:"itemType,omitempty"`
}

// Validate validates this Platform reward item
func (m *PlatformRewardItem) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PlatformRewardItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlatformRewardItem) UnmarshalBinary(b []byte) error {
	var res PlatformRewardItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
