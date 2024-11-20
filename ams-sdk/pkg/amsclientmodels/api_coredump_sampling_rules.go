// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APICoredumpSamplingRules Api coredump sampling rules
//
// swagger:model Api coredump sampling rules.
type APICoredumpSamplingRules struct {

	// crashed
	// Required: true
	Crashed *APIArtifactSamplingRule `json:"crashed"`
}

// Validate validates this Api coredump sampling rules
func (m *APICoredumpSamplingRules) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCrashed(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APICoredumpSamplingRules) validateCrashed(formats strfmt.Registry) error {

	if err := validate.Required("crashed", "body", m.Crashed); err != nil {
		return err
	}

	if m.Crashed != nil {
		if err := m.Crashed.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("crashed")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APICoredumpSamplingRules) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APICoredumpSamplingRules) UnmarshalBinary(b []byte) error {
	var res APICoredumpSamplingRules
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
