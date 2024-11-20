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

// CycleOverride Cycle override
//
// swagger:model Cycle override.
type CycleOverride struct {

	// cycleid
	CycleID string `json:"cycleId,omitempty"`

	// maximum
	// Format: double
	Maximum float64 `json:"maximum,omitempty"`

	// minimum
	// Format: double
	Minimum float64 `json:"minimum,omitempty"`
}

// Validate validates this Cycle override
func (m *CycleOverride) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CycleOverride) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CycleOverride) UnmarshalBinary(b []byte) error {
	var res CycleOverride
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
