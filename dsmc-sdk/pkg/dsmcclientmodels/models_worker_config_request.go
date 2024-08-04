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

// ModelsWorkerConfigRequest Models worker config request
//
// swagger:model Models worker config request.
type ModelsWorkerConfigRequest struct {

	// auto_deletion
	// Required: true
	AutoDeletion *bool `json:"auto_deletion"`

	// ghost_worker
	// Required: true
	GhostWorker *bool `json:"ghost_worker"`

	// manual_buffer_override
	// Required: true
	ManualBufferOverride *bool `json:"manual_buffer_override"`

	// zombie_worker
	// Required: true
	ZombieWorker *bool `json:"zombie_worker"`
}

// Validate validates this Models worker config request
func (m *ModelsWorkerConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAutoDeletion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGhostWorker(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateManualBufferOverride(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateZombieWorker(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsWorkerConfigRequest) validateAutoDeletion(formats strfmt.Registry) error {

	if err := validate.Required("auto_deletion", "body", m.AutoDeletion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWorkerConfigRequest) validateGhostWorker(formats strfmt.Registry) error {

	if err := validate.Required("ghost_worker", "body", m.GhostWorker); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWorkerConfigRequest) validateManualBufferOverride(formats strfmt.Registry) error {

	if err := validate.Required("manual_buffer_override", "body", m.ManualBufferOverride); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWorkerConfigRequest) validateZombieWorker(formats strfmt.Registry) error {

	if err := validate.Required("zombie_worker", "body", m.ZombieWorker); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsWorkerConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsWorkerConfigRequest) UnmarshalBinary(b []byte) error {
	var res ModelsWorkerConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
