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

// GeneratedGetDeploymentV1Response Generated get deployment V1 response
//
// swagger:model Generated get deployment V1 response.
type GeneratedGetDeploymentV1Response struct {

	// deletedat
	DeletedAt string `json:"deletedAt,omitempty"`

	// deploymentid
	// Required: true
	DeploymentID *string `json:"deploymentId"`

	// imagetag
	ImageTag string `json:"imageTag,omitempty"`

	// message
	Message string `json:"message,omitempty"`

	// status
	Status string `json:"status,omitempty"`

	// updatedat
	UpdatedAt string `json:"updatedAt,omitempty"`
}

// Validate validates this Generated get deployment V1 response
func (m *GeneratedGetDeploymentV1Response) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeploymentID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GeneratedGetDeploymentV1Response) validateDeploymentID(formats strfmt.Registry) error {

	if err := validate.Required("deploymentId", "body", m.DeploymentID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedGetDeploymentV1Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedGetDeploymentV1Response) UnmarshalBinary(b []byte) error {
	var res GeneratedGetDeploymentV1Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
