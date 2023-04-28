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

// ModelsDetailedCountServerResponse Models detailed count server response
//
// swagger:model Models detailed count server response.
type ModelsDetailedCountServerResponse struct {

	// busy_count
	// Required: true
	// Format: int32
	BusyCount *int32 `json:"busy_count"`

	// creating_count
	// Required: true
	// Format: int32
	CreatingCount *int32 `json:"creating_count"`

	// ready_count
	// Required: true
	// Format: int32
	ReadyCount *int32 `json:"ready_count"`

	// unreachable_count
	// Required: true
	// Format: int32
	UnreachableCount *int32 `json:"unreachable_count"`
}

// Validate validates this Models detailed count server response
func (m *ModelsDetailedCountServerResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBusyCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatingCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReadyCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUnreachableCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDetailedCountServerResponse) validateBusyCount(formats strfmt.Registry) error {

	if err := validate.Required("busy_count", "body", m.BusyCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDetailedCountServerResponse) validateCreatingCount(formats strfmt.Registry) error {

	if err := validate.Required("creating_count", "body", m.CreatingCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDetailedCountServerResponse) validateReadyCount(formats strfmt.Registry) error {

	if err := validate.Required("ready_count", "body", m.ReadyCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDetailedCountServerResponse) validateUnreachableCount(formats strfmt.Registry) error {

	if err := validate.Required("unreachable_count", "body", m.UnreachableCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDetailedCountServerResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDetailedCountServerResponse) UnmarshalBinary(b []byte) error {
	var res ModelsDetailedCountServerResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
