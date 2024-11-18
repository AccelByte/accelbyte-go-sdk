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

// ApimodelCreateDeploymentV2Request Apimodel create deployment V2 request
//
// swagger:model Apimodel create deployment V2 request.
type ApimodelCreateDeploymentV2Request struct {

	// imagetag
	// Required: true
	ImageTag *string `json:"imageTag"`
}

// Validate validates this Apimodel create deployment V2 request
func (m *ApimodelCreateDeploymentV2Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateImageTag(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelCreateDeploymentV2Request) validateImageTag(formats strfmt.Registry) error {

	if err := validate.Required("imageTag", "body", m.ImageTag); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelCreateDeploymentV2Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelCreateDeploymentV2Request) UnmarshalBinary(b []byte) error {
	var res ApimodelCreateDeploymentV2Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
