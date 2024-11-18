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

// ApimodelAutoscalingResponse Apimodel autoscaling response
//
// swagger:model Apimodel autoscaling response.
type ApimodelAutoscalingResponse struct {

	// targetcpuutilizationpercent
	// Required: true
	// Format: int32
	TargetCPUUtilizationPercent *int32 `json:"targetCPUUtilizationPercent"`
}

// Validate validates this Apimodel autoscaling response
func (m *ApimodelAutoscalingResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTargetCPUUtilizationPercent(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelAutoscalingResponse) validateTargetCPUUtilizationPercent(formats strfmt.Registry) error {

	if err := validate.Required("targetCPUUtilizationPercent", "body", m.TargetCPUUtilizationPercent); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelAutoscalingResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelAutoscalingResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelAutoscalingResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
