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

// SimpleDLCRewardItem Simple DLC reward item
//
// swagger:model Simple DLC reward item.
type SimpleDLCRewardItem struct {

	// item name
	ItemName string `json:"itemName,omitempty"`
}

// Validate validates this Simple DLC reward item
func (m *SimpleDLCRewardItem) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *SimpleDLCRewardItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SimpleDLCRewardItem) UnmarshalBinary(b []byte) error {
	var res SimpleDLCRewardItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
