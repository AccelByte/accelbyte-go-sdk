// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dslogmanagerclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDownloadLogsRequest Models download logs request
//
// swagger:model Models download logs request.
type ModelsDownloadLogsRequest struct {

	// alloc_id
	// Required: true
	AllocID *string `json:"alloc_id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// pod_name
	// Required: true
	PodName *string `json:"pod_name"`
}

// Validate validates this Models download logs request
func (m *ModelsDownloadLogsRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllocID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePodName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDownloadLogsRequest) validateAllocID(formats strfmt.Registry) error {

	if err := validate.Required("alloc_id", "body", m.AllocID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDownloadLogsRequest) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDownloadLogsRequest) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("pod_name", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDownloadLogsRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDownloadLogsRequest) UnmarshalBinary(b []byte) error {
	var res ModelsDownloadLogsRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
