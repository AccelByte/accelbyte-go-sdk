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

// InventoryConfig Inventory config
//
// swagger:model Inventory config.
type InventoryConfig struct {

	// predefined custom additional attributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// predefined server custom additional attributes
	ServerCustomAttributes interface{} `json:"serverCustomAttributes,omitempty"`

	// number of slot being taken for this item
	// Format: int32
	SlotUsed int32 `json:"slotUsed,omitempty"`
}

// Validate validates this Inventory config
func (m *InventoryConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *InventoryConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *InventoryConfig) UnmarshalBinary(b []byte) error {
	var res InventoryConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
