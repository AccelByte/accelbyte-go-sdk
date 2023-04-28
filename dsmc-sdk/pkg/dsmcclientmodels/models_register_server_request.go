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

// ModelsRegisterServerRequest Models register server request
//
// swagger:model Models register server request.
type ModelsRegisterServerRequest struct {

	// custom_attribute
	// Required: true
	CustomAttribute *string `json:"custom_attribute"`

	// pod_name
	// Required: true
	PodName *string `json:"pod_name"`
}

// Validate validates this Models register server request
func (m *ModelsRegisterServerRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCustomAttribute(formats); err != nil {
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

func (m *ModelsRegisterServerRequest) validateCustomAttribute(formats strfmt.Registry) error {

	if err := validate.Required("custom_attribute", "body", m.CustomAttribute); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRegisterServerRequest) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("pod_name", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRegisterServerRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRegisterServerRequest) UnmarshalBinary(b []byte) error {
	var res ModelsRegisterServerRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
