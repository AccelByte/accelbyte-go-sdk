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

// ApimodelCreateAppV5Request Apimodel create app V5 request
//
// swagger:model Apimodel create app V5 request.
type ApimodelCreateAppV5Request struct {

	// autoscaling
	Autoscaling *CreateappparamsAutoscalingRequest `json:"autoscaling,omitempty"`

	// cpu
	CPU *CreateappparamsCPURequest `json:"cpu,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// memory
	Memory *CreateappparamsMemoryRequest `json:"memory,omitempty"`

	// preferred_k8s_namespace
	PreferredK8sNamespace string `json:"preferred_k8s_namespace,omitempty"`

	// replica
	Replica *CreateappparamsReplicaRequest `json:"replica,omitempty"`

	// scenario
	// Required: true
	Scenario *string `json:"scenario"`

	// vmsharingconfiguration
	VMSharingConfiguration string `json:"vmSharingConfiguration,omitempty"`
}

// Validate validates this Apimodel create app V5 request
func (m *ApimodelCreateAppV5Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateScenario(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelCreateAppV5Request) validateScenario(formats strfmt.Registry) error {

	if err := validate.Required("scenario", "body", m.Scenario); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelCreateAppV5Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelCreateAppV5Request) UnmarshalBinary(b []byte) error {
	var res ApimodelCreateAppV5Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
