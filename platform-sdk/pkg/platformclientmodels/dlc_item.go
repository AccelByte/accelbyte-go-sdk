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

// DLCItem DLC item
//
// swagger:model DLC item.
type DLCItem struct {

	// auto update entitlement when dlc has an update, will be set as false when not included in the request
	AutoUpdate bool `json:"autoUpdate"`

	// dlc id
	ID string `json:"id,omitempty"`

	// reward list
	Rewards []*PlatformReward `json:"rewards,omitempty"`

	// rvn
	// Format: int32
	Rvn int32 `json:"rvn,omitempty"`
}

// Validate validates this DLC item
func (m *DLCItem) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DLCItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DLCItem) UnmarshalBinary(b []byte) error {
	var res DLCItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
