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

// ApimodelCreateAppV2Request Apimodel create app V2 request
//
// swagger:model Apimodel create app V2 request.
type ApimodelCreateAppV2Request struct {

	// autoscaling
	Autoscaling *ApimodelAutoscalingRequest `json:"autoscaling,omitempty"`

	// cpu
	CPU *ApimodelCPURequest `json:"cpu,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// memory
	Memory *ApimodelMemoryRequest `json:"memory,omitempty"`

	// replica
	Replica *ApimodelReplicaRequest `json:"replica,omitempty"`

	// scenario
	// Required: true
	Scenario *string `json:"scenario"`

	// vmsharingconfiguration
	VMSharingConfiguration string `json:"vmSharingConfiguration,omitempty"`
}

// Validate validates this Apimodel create app V2 request
func (m *ApimodelCreateAppV2Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateScenario(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelCreateAppV2Request) validateScenario(formats strfmt.Registry) error {

	if err := validate.Required("scenario", "body", m.Scenario); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelCreateAppV2Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelCreateAppV2Request) UnmarshalBinary(b []byte) error {
	var res ApimodelCreateAppV2Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
