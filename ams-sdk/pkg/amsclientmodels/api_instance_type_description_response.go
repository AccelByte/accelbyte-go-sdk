// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIInstanceTypeDescriptionResponse Api instance type description response
//
// swagger:model Api instance type description response.
type APIInstanceTypeDescriptionResponse struct {

	// description
	// Required: true
	Description *string `json:"description"`

	// id
	// Required: true
	ID *string `json:"id"`

	// memorygib
	// Required: true
	// Format: double
	MemoryGiB *float64 `json:"memoryGiB"`

	// minspeed
	// Required: true
	MinSpeed *string `json:"minSpeed"`

	// name
	// Required: true
	Name *string `json:"name"`

	// virtualcpu
	// Required: true
	// Format: int32
	VirtualCPU *int32 `json:"virtualCpu"`
}

// Validate validates this Api instance type description response
func (m *APIInstanceTypeDescriptionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMemoryGiB(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinSpeed(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateVirtualCPU(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIInstanceTypeDescriptionResponse) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceTypeDescriptionResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceTypeDescriptionResponse) validateMemoryGiB(formats strfmt.Registry) error {

	if err := validate.Required("memoryGiB", "body", m.MemoryGiB); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceTypeDescriptionResponse) validateMinSpeed(formats strfmt.Registry) error {

	if err := validate.Required("minSpeed", "body", m.MinSpeed); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceTypeDescriptionResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceTypeDescriptionResponse) validateVirtualCPU(formats strfmt.Registry) error {

	if err := validate.Required("virtualCpu", "body", m.VirtualCPU); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIInstanceTypeDescriptionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIInstanceTypeDescriptionResponse) UnmarshalBinary(b []byte) error {
	var res APIInstanceTypeDescriptionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
