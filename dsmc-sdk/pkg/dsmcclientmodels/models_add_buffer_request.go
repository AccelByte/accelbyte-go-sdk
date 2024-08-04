// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAddBufferRequest Models add buffer request
//
// swagger:model Models add buffer request.
type ModelsAddBufferRequest struct {

	// alloccount
	// Required: true
	// Format: int32
	AllocCount *int32 `json:"AllocCount"`

	// deploymentname
	// Required: true
	DeploymentName *string `json:"DeploymentName"`

	// jobcount
	// Required: true
	// Format: int32
	JobCount *int32 `json:"JobCount"`

	// jobpriority
	// Required: true
	// Format: int32
	JobPriority *int32 `json:"JobPriority"`

	// overrideversion
	// Required: true
	OverrideVersion *string `json:"OverrideVersion"`

	// region
	// Required: true
	Region *string `json:"Region"`
}

// Validate validates this Models add buffer request
func (m *ModelsAddBufferRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllocCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeploymentName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJobCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJobPriority(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOverrideVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAddBufferRequest) validateAllocCount(formats strfmt.Registry) error {

	if err := validate.Required("AllocCount", "body", m.AllocCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAddBufferRequest) validateDeploymentName(formats strfmt.Registry) error {

	if err := validate.Required("DeploymentName", "body", m.DeploymentName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAddBufferRequest) validateJobCount(formats strfmt.Registry) error {

	if err := validate.Required("JobCount", "body", m.JobCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAddBufferRequest) validateJobPriority(formats strfmt.Registry) error {

	if err := validate.Required("JobPriority", "body", m.JobPriority); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAddBufferRequest) validateOverrideVersion(formats strfmt.Registry) error {

	if err := validate.Required("OverrideVersion", "body", m.OverrideVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAddBufferRequest) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("Region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAddBufferRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAddBufferRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAddBufferRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
