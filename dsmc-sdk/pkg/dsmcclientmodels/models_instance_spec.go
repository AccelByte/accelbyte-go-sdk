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

// ModelsInstanceSpec Models instance spec
//
// swagger:model Models instance spec.
type ModelsInstanceSpec struct {

	// cpu
	// Required: true
	// Format: int64
	CPU *int64 `json:"cpu"`

	// mem
	// Required: true
	// Format: int64
	Mem *int64 `json:"mem"`
}

// Validate validates this Models instance spec
func (m *ModelsInstanceSpec) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCPU(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMem(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsInstanceSpec) validateCPU(formats strfmt.Registry) error {

	if err := validate.Required("cpu", "body", m.CPU); err != nil {
		return err
	}

	return nil
}

func (m *ModelsInstanceSpec) validateMem(formats strfmt.Registry) error {

	if err := validate.Required("mem", "body", m.Mem); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsInstanceSpec) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsInstanceSpec) UnmarshalBinary(b []byte) error {
	var res ModelsInstanceSpec
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
