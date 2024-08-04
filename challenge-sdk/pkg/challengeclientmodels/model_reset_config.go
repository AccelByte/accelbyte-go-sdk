// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelResetConfig Model reset config
//
// swagger:model Model reset config.
type ModelResetConfig struct {

	// valid value are 1 to 31, default to 1 for MONTHLY rotation
	// Format: int32
	ResetDate int32 `json:"resetDate,omitempty"`

	// valid value are 1 (Monday) to 7 (Sunday), default to 1 for WEEKLY rotation
	// Format: int32
	ResetDay int32 `json:"resetDay,omitempty"`

	// format hh:mm, must be in UTC timezone, default '00:00' for all rotation
	ResetTime string `json:"resetTime,omitempty"`
}

// Validate validates this Model reset config
func (m *ModelResetConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelResetConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelResetConfig) UnmarshalBinary(b []byte) error {
	var res ModelResetConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
