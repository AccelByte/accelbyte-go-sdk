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

// ModelsShutdownServerRequest Models shutdown server request
//
// swagger:model Models shutdown server request.
type ModelsShutdownServerRequest struct {

	// kill_me
	// Required: true
	KillMe *bool `json:"kill_me"`

	// pod_name
	// Required: true
	PodName *string `json:"pod_name"`
}

// Validate validates this Models shutdown server request
func (m *ModelsShutdownServerRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateKillMe(formats); err != nil {
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

func (m *ModelsShutdownServerRequest) validateKillMe(formats strfmt.Registry) error {

	if err := validate.Required("kill_me", "body", m.KillMe); err != nil {
		return err
	}

	return nil
}

func (m *ModelsShutdownServerRequest) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("pod_name", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsShutdownServerRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsShutdownServerRequest) UnmarshalBinary(b []byte) error {
	var res ModelsShutdownServerRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
