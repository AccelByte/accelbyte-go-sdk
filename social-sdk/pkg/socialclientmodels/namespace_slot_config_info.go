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

// NamespaceSlotConfigInfo Namespace slot config info
//
// swagger:model Namespace slot config info.
type NamespaceSlotConfigInfo struct {

	// maxslotsize
	// Format: int32
	MaxSlotSize int32 `json:"maxSlotSize,omitempty"`

	// maxslots
	// Format: int32
	MaxSlots int32 `json:"maxSlots,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`
}

// Validate validates this Namespace slot config info
func (m *NamespaceSlotConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *NamespaceSlotConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *NamespaceSlotConfigInfo) UnmarshalBinary(b []byte) error {
	var res NamespaceSlotConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
