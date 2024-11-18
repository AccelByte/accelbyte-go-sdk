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

// GeneratedGetDeploymentListV1DataItem Generated get deployment list V1 data item
//
// swagger:model Generated get deployment list V1 data item.
type GeneratedGetDeploymentListV1DataItem struct {

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

// Validate validates this Generated get deployment list V1 data item
func (m *GeneratedGetDeploymentListV1DataItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeploymentID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GeneratedGetDeploymentListV1DataItem) validateDeploymentID(formats strfmt.Registry) error {

	if err := validate.Required("deploymentId", "body", m.DeploymentID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedGetDeploymentListV1DataItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedGetDeploymentListV1DataItem) UnmarshalBinary(b []byte) error {
	var res GeneratedGetDeploymentListV1DataItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
