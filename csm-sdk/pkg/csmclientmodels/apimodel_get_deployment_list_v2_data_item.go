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

// ApimodelGetDeploymentListV2DataItem Apimodel get deployment list V2 data item
//
// swagger:model Apimodel get deployment list V2 data item.
type ApimodelGetDeploymentListV2DataItem struct {

	// deletedat
	DeletedAt string `json:"deletedAt,omitempty"`

	// deploymentid
	// Required: true
	DeploymentID *string `json:"deploymentId"`

	// imagetag
	// Required: true
	ImageTag *string `json:"imageTag"`

	// message
	Message string `json:"message,omitempty"`

	// status
	// Required: true
	Status *string `json:"status"`

	// updatedat
	UpdatedAt string `json:"updatedAt,omitempty"`
}

// Validate validates this Apimodel get deployment list V2 data item
func (m *ApimodelGetDeploymentListV2DataItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeploymentID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageTag(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelGetDeploymentListV2DataItem) validateDeploymentID(formats strfmt.Registry) error {

	if err := validate.Required("deploymentId", "body", m.DeploymentID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetDeploymentListV2DataItem) validateImageTag(formats strfmt.Registry) error {

	if err := validate.Required("imageTag", "body", m.ImageTag); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetDeploymentListV2DataItem) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetDeploymentListV2DataItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetDeploymentListV2DataItem) UnmarshalBinary(b []byte) error {
	var res ApimodelGetDeploymentListV2DataItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
