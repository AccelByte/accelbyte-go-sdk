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

// APIArtifactTypeSamplingRules Api artifact type sampling rules
//
// swagger:model Api artifact type sampling rules.
type APIArtifactTypeSamplingRules struct {

	// crashed
	// Required: true
	Crashed *APIArtifactSamplingRule `json:"crashed"`

	// success
	// Required: true
	Success *APIArtifactSamplingRule `json:"success"`
}

// Validate validates this Api artifact type sampling rules
func (m *APIArtifactTypeSamplingRules) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCrashed(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSuccess(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIArtifactTypeSamplingRules) validateCrashed(formats strfmt.Registry) error {

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

func (m *APIArtifactTypeSamplingRules) validateSuccess(formats strfmt.Registry) error {

	if err := validate.Required("success", "body", m.Success); err != nil {
		return err
	}

	if m.Success != nil {
		if err := m.Success.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("success")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIArtifactTypeSamplingRules) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIArtifactTypeSamplingRules) UnmarshalBinary(b []byte) error {
	var res APIArtifactTypeSamplingRules
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
