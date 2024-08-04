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

// ModelsDeleteZombieRequest Models delete zombie request
//
// swagger:model Models delete zombie request.
type ModelsDeleteZombieRequest struct {

	// jobcount
	// Required: true
	// Format: int32
	JobCount *int32 `json:"JobCount"`

	// region
	// Required: true
	Region *string `json:"Region"`

	// timeoutsecond
	// Required: true
	// Format: int32
	TimeoutSecond *int32 `json:"TimeoutSecond"`

	// zombiecount
	// Required: true
	// Format: int32
	ZombieCount *int32 `json:"ZombieCount"`
}

// Validate validates this Models delete zombie request
func (m *ModelsDeleteZombieRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateJobCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimeoutSecond(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateZombieCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDeleteZombieRequest) validateJobCount(formats strfmt.Registry) error {

	if err := validate.Required("JobCount", "body", m.JobCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDeleteZombieRequest) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("Region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDeleteZombieRequest) validateTimeoutSecond(formats strfmt.Registry) error {

	if err := validate.Required("TimeoutSecond", "body", m.TimeoutSecond); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDeleteZombieRequest) validateZombieCount(formats strfmt.Registry) error {

	if err := validate.Required("ZombieCount", "body", m.ZombieCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDeleteZombieRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDeleteZombieRequest) UnmarshalBinary(b []byte) error {
	var res ModelsDeleteZombieRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
