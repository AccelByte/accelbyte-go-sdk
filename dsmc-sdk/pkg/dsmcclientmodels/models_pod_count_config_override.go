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

// ModelsPodCountConfigOverride Models pod count config override
//
// swagger:model Models pod count config override.
type ModelsPodCountConfigOverride struct {

	// buffer_count
	// Required: true
	// Format: int32
	BufferCount *int32 `json:"buffer_count"`

	// buffer_percent
	// Required: true
	// Format: int32
	BufferPercent *int32 `json:"buffer_percent"`

	// max_count
	// Required: true
	// Format: int32
	MaxCount *int32 `json:"max_count"`

	// min_count
	// Required: true
	// Format: int32
	MinCount *int32 `json:"min_count"`

	// name
	// Required: true
	Name *string `json:"name"`

	// unlimited
	// Required: true
	Unlimited *bool `json:"unlimited"`

	// use_buffer_percent
	// Required: true
	UseBufferPercent *bool `json:"use_buffer_percent"`
}

// Validate validates this Models pod count config override
func (m *ModelsPodCountConfigOverride) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBufferCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBufferPercent(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUnlimited(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUseBufferPercent(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPodCountConfigOverride) validateBufferCount(formats strfmt.Registry) error {

	if err := validate.Required("buffer_count", "body", m.BufferCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodCountConfigOverride) validateBufferPercent(formats strfmt.Registry) error {

	if err := validate.Required("buffer_percent", "body", m.BufferPercent); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodCountConfigOverride) validateMaxCount(formats strfmt.Registry) error {

	if err := validate.Required("max_count", "body", m.MaxCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodCountConfigOverride) validateMinCount(formats strfmt.Registry) error {

	if err := validate.Required("min_count", "body", m.MinCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodCountConfigOverride) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodCountConfigOverride) validateUnlimited(formats strfmt.Registry) error {

	if err := validate.Required("unlimited", "body", m.Unlimited); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPodCountConfigOverride) validateUseBufferPercent(formats strfmt.Registry) error {

	if err := validate.Required("use_buffer_percent", "body", m.UseBufferPercent); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPodCountConfigOverride) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPodCountConfigOverride) UnmarshalBinary(b []byte) error {
	var res ModelsPodCountConfigOverride
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
