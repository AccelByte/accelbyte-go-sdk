// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// GeneratedCreateDeploymentV1Response Generated create deployment V1 response
//
// swagger:model Generated create deployment V1 response.
type GeneratedCreateDeploymentV1Response struct {

	// deploymentid
	DeploymentID string `json:"deploymentId,omitempty"`
}

// Validate validates this Generated create deployment V1 response
func (m *GeneratedCreateDeploymentV1Response) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedCreateDeploymentV1Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedCreateDeploymentV1Response) UnmarshalBinary(b []byte) error {
	var res GeneratedCreateDeploymentV1Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
