// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// CycleOverrideRequest Cycle override request
//
// swagger:model Cycle override request.
type CycleOverrideRequest struct {

	// cycleid
	// Required: true
	CycleID *string `json:"cycleId"`

	// maximum
	// Format: double
	Maximum float64 `json:"maximum,omitempty"`

	// minimum
	// Format: double
	Minimum float64 `json:"minimum,omitempty"`
}

// Validate validates this Cycle override request
func (m *CycleOverrideRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCycleID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CycleOverrideRequest) validateCycleID(formats strfmt.Registry) error {

	if err := validate.Required("cycleId", "body", m.CycleID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CycleOverrideRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CycleOverrideRequest) UnmarshalBinary(b []byte) error {
	var res CycleOverrideRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
