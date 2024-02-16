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

// ModelsAllQueueResult Models all queue result
//
// swagger:model Models all queue result.
type ModelsAllQueueResult struct {

	// allocation_id
	// Required: true
	AllocationID *string `json:"allocation_id"`

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// failed
	// Required: true
	Failed *bool `json:"failed"`

	// failed_reason
	// Required: true
	FailedReason *string `json:"failed_reason"`

	// node_ip
	// Required: true
	NodeIP *string `json:"node_ip"`

	// pod_name
	// Required: true
	PodName *string `json:"pod_name"`

	// uploading
	// Required: true
	Uploading *bool `json:"uploading"`
}

// Validate validates this Models all queue result
func (m *ModelsAllQueueResult) Validate(formats strfmt.Registry) error {
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

func (m *ModelsAllQueueResult) validateAllocationID(formats strfmt.Registry) error {

	if err := validate.Required("allocation_id", "body", m.AllocationID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllQueueResult) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllQueueResult) validateFailed(formats strfmt.Registry) error {

	if err := validate.Required("failed", "body", m.Failed); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllQueueResult) validateFailedReason(formats strfmt.Registry) error {

	if err := validate.Required("failed_reason", "body", m.FailedReason); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllQueueResult) validateNodeIP(formats strfmt.Registry) error {

	if err := validate.Required("node_ip", "body", m.NodeIP); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllQueueResult) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("pod_name", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllQueueResult) validateUploading(formats strfmt.Registry) error {

	if err := validate.Required("uploading", "body", m.Uploading); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAllQueueResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAllQueueResult) UnmarshalBinary(b []byte) error {
	var res ModelsAllQueueResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
