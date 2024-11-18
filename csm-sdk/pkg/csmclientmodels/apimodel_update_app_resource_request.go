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

// ApimodelUpdateAppResourceRequest Apimodel update app resource request
//
// swagger:model Apimodel update app resource request.
type ApimodelUpdateAppResourceRequest struct {

	// autoscaling
	// Required: true
	Autoscaling *ApimodelAutoscalingRequest `json:"autoscaling"`

	// cpu
	CPU *ApimodelCPURequest `json:"cpu,omitempty"`

	// memory
	Memory *ApimodelMemoryRequest `json:"memory,omitempty"`

	// replica
	Replica *ApimodelReplicaRequest `json:"replica,omitempty"`
}

// Validate validates this Apimodel update app resource request
func (m *ApimodelUpdateAppResourceRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAutoscaling(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelUpdateAppResourceRequest) validateAutoscaling(formats strfmt.Registry) error {

	if err := validate.Required("autoscaling", "body", m.Autoscaling); err != nil {
		return err
	}

	if m.Autoscaling != nil {
		if err := m.Autoscaling.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("autoscaling")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelUpdateAppResourceRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelUpdateAppResourceRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelUpdateAppResourceRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
