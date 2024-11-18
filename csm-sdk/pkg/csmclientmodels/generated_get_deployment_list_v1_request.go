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

// GeneratedGetDeploymentListV1Request Generated get deployment list V1 request
//
// swagger:model Generated get deployment list V1 request.
type GeneratedGetDeploymentListV1Request struct {

	// appids
	// Required: true
	AppIds []string `json:"appIds"`

	// deploymentids
	// Required: true
	DeploymentIds []string `json:"deploymentIds"`

	// statuses
	// Required: true
	Statuses []string `json:"statuses"`
}

// Validate validates this Generated get deployment list V1 request
func (m *GeneratedGetDeploymentListV1Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppIds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeploymentIds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatuses(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GeneratedGetDeploymentListV1Request) validateAppIds(formats strfmt.Registry) error {

	if err := validate.Required("appIds", "body", m.AppIds); err != nil {
		return err
	}

	return nil
}

func (m *GeneratedGetDeploymentListV1Request) validateDeploymentIds(formats strfmt.Registry) error {

	if err := validate.Required("deploymentIds", "body", m.DeploymentIds); err != nil {
		return err
	}

	return nil
}

func (m *GeneratedGetDeploymentListV1Request) validateStatuses(formats strfmt.Registry) error {

	if err := validate.Required("statuses", "body", m.Statuses); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedGetDeploymentListV1Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedGetDeploymentListV1Request) UnmarshalBinary(b []byte) error {
	var res GeneratedGetDeploymentListV1Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
