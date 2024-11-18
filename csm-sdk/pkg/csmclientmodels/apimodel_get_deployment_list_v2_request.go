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

// ApimodelGetDeploymentListV2Request Apimodel get deployment list V2 request
//
// swagger:model Apimodel get deployment list V2 request.
type ApimodelGetDeploymentListV2Request struct {

	// appids
	AppIds []string `json:"appIds,omitempty"`

	// deploymentids
	DeploymentIds []string `json:"deploymentIds,omitempty"`

	// statuses
	Statuses []string `json:"statuses,omitempty"`
}

// Validate validates this Apimodel get deployment list V2 request
func (m *ApimodelGetDeploymentListV2Request) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetDeploymentListV2Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetDeploymentListV2Request) UnmarshalBinary(b []byte) error {
	var res ApimodelGetDeploymentListV2Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
