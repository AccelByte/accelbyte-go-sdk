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

// ModelAppRedeploymentInfo Model app redeployment info
//
// swagger:model Model app redeployment info.
type ModelAppRedeploymentInfo struct {

	// details
	Details []*ModelAppRedeploymentDetail `json:"details,omitempty"`

	// shouldredeploy
	// Required: true
	ShouldRedeploy *bool `json:"shouldRedeploy"`
}

// Validate validates this Model app redeployment info
func (m *ModelAppRedeploymentInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateShouldRedeploy(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelAppRedeploymentInfo) validateShouldRedeploy(formats strfmt.Registry) error {

	if err := validate.Required("shouldRedeploy", "body", m.ShouldRedeploy); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelAppRedeploymentInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelAppRedeploymentInfo) UnmarshalBinary(b []byte) error {
	var res ModelAppRedeploymentInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
