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

// ModelsPodConfigRecord Models pod config record
//
// swagger:model Models pod config record.
type ModelsPodConfigRecord struct {

	// cpu_limit
	// Required: true
	// Format: int32
	CPULimit *int32 `json:"cpu_limit"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// mem_limit
	// Required: true
	// Format: int32
	MemLimit *int32 `json:"mem_limit"`

	// modifiedby
	// Required: true
	ModifiedBy *string `json:"modifiedBy"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// params
	// Required: true
	Params *string `json:"params"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Models pod config record
func (m *ModelsPodConfigRecord) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCPULimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMemLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateModifiedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateParams(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPodConfigRecord) validateCPULimit(formats strfmt.Registry) error {

	if err := validate.Required("cpu_limit", "body", m.CPULimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodConfigRecord) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodConfigRecord) validateMemLimit(formats strfmt.Registry) error {

	if err := validate.Required("mem_limit", "body", m.MemLimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodConfigRecord) validateModifiedBy(formats strfmt.Registry) error {

	if err := validate.Required("modifiedBy", "body", m.ModifiedBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodConfigRecord) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodConfigRecord) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodConfigRecord) validateParams(formats strfmt.Registry) error {

	if err := validate.Required("params", "body", m.Params); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodConfigRecord) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPodConfigRecord) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPodConfigRecord) UnmarshalBinary(b []byte) error {
	var res ModelsPodConfigRecord
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
