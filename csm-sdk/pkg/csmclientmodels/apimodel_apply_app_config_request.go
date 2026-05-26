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

// ApimodelApplyAppConfigRequest Apimodel apply app config request
//
// swagger:model Apimodel apply app config request.
type ApimodelApplyAppConfigRequest struct {

	// autoscaling
	Autoscaling *ApimodelAutoscalingRequest `json:"autoscaling,omitempty"`

	// cpu
	CPU *ApimodelCPURequest `json:"cpu,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// memory
	Memory *ApimodelMemoryRequest `json:"memory,omitempty"`

	// permissions
	Permissions []*ApimodelApplyPermissionItem `json:"permissions,omitempty"`

	// replica
	Replica *ApimodelReplicaRequest `json:"replica,omitempty"`

	// scenario
	// Required: true
	Scenario *string `json:"scenario"`

	// secrets
	Secrets []*ApimodelApplyConfigItem `json:"secrets,omitempty"`

	// variables
	Variables []*ApimodelApplyConfigItem `json:"variables,omitempty"`

	// vmsharingconfiguration
	VMSharingConfiguration string `json:"vmSharingConfiguration,omitempty"`
}

// Validate validates this Apimodel apply app config request
func (m *ApimodelApplyAppConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateScenario(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelApplyAppConfigRequest) validateScenario(formats strfmt.Registry) error {

	if err := validate.Required("scenario", "body", m.Scenario); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelApplyAppConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelApplyAppConfigRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelApplyAppConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
