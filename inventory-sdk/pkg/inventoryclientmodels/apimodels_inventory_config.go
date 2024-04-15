// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ApimodelsInventoryConfig Apimodels inventory config
//
// swagger:model Apimodels inventory config.
type ApimodelsInventoryConfig struct {

	// slotused
	// Format: int32
	SlotUsed int32 `json:"slotUsed,omitempty"`
}

// Validate validates this Apimodels inventory config
func (m *ApimodelsInventoryConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsInventoryConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsInventoryConfig) UnmarshalBinary(b []byte) error {
	var res ApimodelsInventoryConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
