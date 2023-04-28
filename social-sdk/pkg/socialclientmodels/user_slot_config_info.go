// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// UserSlotConfigInfo User slot config info
//
// swagger:model User slot config info.
type UserSlotConfigInfo struct {

	// maxslotsize
	// Format: int32
	MaxSlotSize int32 `json:"maxSlotSize,omitempty"`

	// maxslots
	// Format: int32
	MaxSlots int32 `json:"maxSlots,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this User slot config info
func (m *UserSlotConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UserSlotConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserSlotConfigInfo) UnmarshalBinary(b []byte) error {
	var res UserSlotConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
