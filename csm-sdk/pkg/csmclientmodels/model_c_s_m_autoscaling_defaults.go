// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelCSMAutoscalingDefaults Model CSM autoscaling defaults
//
// swagger:model Model CSM autoscaling defaults.
type ModelCSMAutoscalingDefaults struct {

	// cpuutilizationdefaultpercent
	// Required: true
	// Format: int32
	CPUUtilizationDefaultPercent *int32 `json:"cpuUtilizationDefaultPercent"`

	// cpuutilizationmaxpercent
	// Required: true
	// Format: int32
	CPUUtilizationMaxPercent *int32 `json:"cpuUtilizationMaxPercent"`

	// cpuutilizationminpercent
	// Required: true
	// Format: int32
	CPUUtilizationMinPercent *int32 `json:"cpuUtilizationMinPercent"`
}

// Validate validates this Model CSM autoscaling defaults
func (m *ModelCSMAutoscalingDefaults) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCPUUtilizationDefaultPercent(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCPUUtilizationMaxPercent(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCPUUtilizationMinPercent(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelCSMAutoscalingDefaults) validateCPUUtilizationDefaultPercent(formats strfmt.Registry) error {

	if err := validate.Required("cpuUtilizationDefaultPercent", "body", m.CPUUtilizationDefaultPercent); err != nil {
		return err
	}

	return nil
}

func (m *ModelCSMAutoscalingDefaults) validateCPUUtilizationMaxPercent(formats strfmt.Registry) error {

	if err := validate.Required("cpuUtilizationMaxPercent", "body", m.CPUUtilizationMaxPercent); err != nil {
		return err
	}

	return nil
}

func (m *ModelCSMAutoscalingDefaults) validateCPUUtilizationMinPercent(formats strfmt.Registry) error {

	if err := validate.Required("cpuUtilizationMinPercent", "body", m.CPUUtilizationMinPercent); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCSMAutoscalingDefaults) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCSMAutoscalingDefaults) UnmarshalBinary(b []byte) error {
	var res ModelCSMAutoscalingDefaults
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
