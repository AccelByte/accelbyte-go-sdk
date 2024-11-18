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

// GeneratedCreateDeploymentV1Request Generated create deployment V1 request
//
// swagger:model Generated create deployment V1 request.
type GeneratedCreateDeploymentV1Request struct {

	// description
	Description string `json:"description,omitempty"`

	// imagetag
	// Required: true
	ImageTag *string `json:"imageTag"`
}

// Validate validates this Generated create deployment V1 request
func (m *GeneratedCreateDeploymentV1Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateImageTag(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GeneratedCreateDeploymentV1Request) validateImageTag(formats strfmt.Registry) error {

	if err := validate.Required("imageTag", "body", m.ImageTag); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedCreateDeploymentV1Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedCreateDeploymentV1Request) UnmarshalBinary(b []byte) error {
	var res GeneratedCreateDeploymentV1Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
