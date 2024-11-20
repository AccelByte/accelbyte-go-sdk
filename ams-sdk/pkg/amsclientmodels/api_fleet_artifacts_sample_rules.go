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

// APIFleetArtifactsSampleRules Api fleet artifacts sample rules
//
// swagger:model Api fleet artifacts sample rules.
type APIFleetArtifactsSampleRules struct {

	// coredumps
	// Required: true
	Coredumps *APICoredumpSamplingRules `json:"coredumps"`

	// logs
	// Required: true
	Logs *APIArtifactTypeSamplingRules `json:"logs"`
}

// Validate validates this Api fleet artifacts sample rules
func (m *APIFleetArtifactsSampleRules) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCoredumps(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLogs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetArtifactsSampleRules) validateCoredumps(formats strfmt.Registry) error {

	if err := validate.Required("coredumps", "body", m.Coredumps); err != nil {
		return err
	}

	if m.Coredumps != nil {
		if err := m.Coredumps.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("coredumps")
			}
			return err
		}
	}

	return nil
}

func (m *APIFleetArtifactsSampleRules) validateLogs(formats strfmt.Registry) error {

	if err := validate.Required("logs", "body", m.Logs); err != nil {
		return err
	}

	if m.Logs != nil {
		if err := m.Logs.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("logs")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetArtifactsSampleRules) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetArtifactsSampleRules) UnmarshalBinary(b []byte) error {
	var res APIFleetArtifactsSampleRules
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
