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

// APIArtifactTypeSamplingRulesResponse Api artifact type sampling rules response
//
// swagger:model Api artifact type sampling rules response.
type APIArtifactTypeSamplingRulesResponse struct {

	// crashed
	// Required: true
	Crashed *APIArtifactSamplingRuleResponse `json:"crashed"`

	// success
	// Required: true
	Success *APIArtifactSamplingRuleResponse `json:"success"`
}

// Validate validates this Api artifact type sampling rules response
func (m *APIArtifactTypeSamplingRulesResponse) Validate(formats strfmt.Registry) error {
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

func (m *APIArtifactTypeSamplingRulesResponse) validateCrashed(formats strfmt.Registry) error {

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

func (m *APIArtifactTypeSamplingRulesResponse) validateSuccess(formats strfmt.Registry) error {

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
func (m *APIArtifactTypeSamplingRulesResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIArtifactTypeSamplingRulesResponse) UnmarshalBinary(b []byte) error {
	var res APIArtifactTypeSamplingRulesResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
