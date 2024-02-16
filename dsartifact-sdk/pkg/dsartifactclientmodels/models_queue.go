// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsartifactclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsQueue Models queue
//
// swagger:model Models queue.
type ModelsQueue struct {

	// allocationid
	// Required: true
	AllocationID *string `json:"AllocationID"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"CreatedAt"`

	// failed
	// Required: true
	Failed *bool `json:"Failed"`

	// failedreason
	// Required: true
	FailedReason *string `json:"FailedReason"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// nodeip
	// Required: true
	NodeIP *string `json:"NodeIP"`

	// podname
	// Required: true
	PodName *string `json:"PodName"`

	// uploading
	// Required: true
	Uploading *bool `json:"Uploading"`
}

// Validate validates this Models queue
func (m *ModelsQueue) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllocationID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFailed(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFailedReason(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNodeIP(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePodName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUploading(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsQueue) validateAllocationID(formats strfmt.Registry) error {

	if err := validate.Required("AllocationID", "body", m.AllocationID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsQueue) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("CreatedAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("CreatedAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsQueue) validateFailed(formats strfmt.Registry) error {

	if err := validate.Required("Failed", "body", m.Failed); err != nil {
		return err
	}

	return nil
}

func (m *ModelsQueue) validateFailedReason(formats strfmt.Registry) error {

	if err := validate.Required("FailedReason", "body", m.FailedReason); err != nil {
		return err
	}

	return nil
}

func (m *ModelsQueue) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsQueue) validateNodeIP(formats strfmt.Registry) error {

	if err := validate.Required("NodeIP", "body", m.NodeIP); err != nil {
		return err
	}

	return nil
}

func (m *ModelsQueue) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("PodName", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsQueue) validateUploading(formats strfmt.Registry) error {

	if err := validate.Required("Uploading", "body", m.Uploading); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsQueue) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsQueue) UnmarshalBinary(b []byte) error {
	var res ModelsQueue
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
