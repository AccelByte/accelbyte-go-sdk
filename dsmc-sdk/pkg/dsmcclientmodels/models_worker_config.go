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

// ModelsWorkerConfig Models worker config
//
// swagger:model Models worker config.
type ModelsWorkerConfig struct {

	// autodeletion
	// Required: true
	AutoDeletion *bool `json:"AutoDeletion"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"CreatedAt"`

	// createdby
	// Required: true
	CreatedBy *string `json:"CreatedBy"`

	// ghostworker
	// Required: true
	GhostWorker *bool `json:"GhostWorker"`

	// manualbufferoverride
	// Required: true
	ManualBufferOverride *bool `json:"ManualBufferOverride"`

	// modifiedby
	// Required: true
	ModifiedBy *string `json:"ModifiedBy"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"UpdatedAt"`

	// zombieworker
	// Required: true
	ZombieWorker *bool `json:"ZombieWorker"`
}

// Validate validates this Models worker config
func (m *ModelsWorkerConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAutoDeletion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGhostWorker(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateManualBufferOverride(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateModifiedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

func (m *ModelsWorkerConfig) validateAutoDeletion(formats strfmt.Registry) error {

	if err := validate.Required("AutoDeletion", "body", m.AutoDeletion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWorkerConfig) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("CreatedAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("CreatedAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWorkerConfig) validateCreatedBy(formats strfmt.Registry) error {

	if err := validate.Required("CreatedBy", "body", m.CreatedBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWorkerConfig) validateGhostWorker(formats strfmt.Registry) error {

	if err := validate.Required("GhostWorker", "body", m.GhostWorker); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWorkerConfig) validateManualBufferOverride(formats strfmt.Registry) error {

	if err := validate.Required("ManualBufferOverride", "body", m.ManualBufferOverride); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWorkerConfig) validateModifiedBy(formats strfmt.Registry) error {

	if err := validate.Required("ModifiedBy", "body", m.ModifiedBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWorkerConfig) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWorkerConfig) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("UpdatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("UpdatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWorkerConfig) validateZombieWorker(formats strfmt.Registry) error {

	if err := validate.Required("ZombieWorker", "body", m.ZombieWorker); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsWorkerConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsWorkerConfig) UnmarshalBinary(b []byte) error {
	var res ModelsWorkerConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
