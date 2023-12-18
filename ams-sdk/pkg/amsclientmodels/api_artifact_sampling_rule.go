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

// APIArtifactSamplingRule Api artifact sampling rule
//
// swagger:model Api artifact sampling rule.
type APIArtifactSamplingRule struct {

	// collect
	// Required: true
	Collect *bool `json:"collect"`

	// percentage
	// Required: true
	// Format: int64
	Percentage *int64 `json:"percentage"`
}

// Validate validates this Api artifact sampling rule
func (m *APIArtifactSamplingRule) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCollect(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePercentage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIArtifactSamplingRule) validateCollect(formats strfmt.Registry) error {

	if err := validate.Required("collect", "body", m.Collect); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactSamplingRule) validatePercentage(formats strfmt.Registry) error {

	if err := validate.Required("percentage", "body", m.Percentage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIArtifactSamplingRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIArtifactSamplingRule) UnmarshalBinary(b []byte) error {
	var res APIArtifactSamplingRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
