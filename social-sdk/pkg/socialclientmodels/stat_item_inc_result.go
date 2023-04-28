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

// StatItemIncResult Stat item inc result
//
// swagger:model Stat item inc result.
type StatItemIncResult struct {

	// currentvalue
	// Required: true
	// Format: double
	CurrentValue *float64 `json:"currentValue"`
}

// Validate validates this Stat item inc result
func (m *StatItemIncResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrentValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *StatItemIncResult) validateCurrentValue(formats strfmt.Registry) error {

	if err := validate.Required("currentValue", "body", m.CurrentValue); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *StatItemIncResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StatItemIncResult) UnmarshalBinary(b []byte) error {
	var res StatItemIncResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
