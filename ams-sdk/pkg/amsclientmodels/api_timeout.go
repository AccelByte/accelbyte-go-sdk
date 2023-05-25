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

// APITimeout Api timeout
//
// swagger:model Api timeout.
type APITimeout struct {

	// creation
	// Required: true
	// Format: int64
	Creation *int64 `json:"creation"`

	// drain
	// Required: true
	// Format: int64
	Drain *int64 `json:"drain"`

	// session
	// Required: true
	// Format: int64
	Session *int64 `json:"session"`

	// unresponsive
	// Required: true
	// Format: int64
	Unresponsive *int64 `json:"unresponsive"`
}

// Validate validates this Api timeout
func (m *APITimeout) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreation(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDrain(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSession(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUnresponsive(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APITimeout) validateCreation(formats strfmt.Registry) error {

	if err := validate.Required("creation", "body", m.Creation); err != nil {
		return err
	}

	return nil
}

func (m *APITimeout) validateDrain(formats strfmt.Registry) error {

	if err := validate.Required("drain", "body", m.Drain); err != nil {
		return err
	}

	return nil
}

func (m *APITimeout) validateSession(formats strfmt.Registry) error {

	if err := validate.Required("session", "body", m.Session); err != nil {
		return err
	}

	return nil
}

func (m *APITimeout) validateUnresponsive(formats strfmt.Registry) error {

	if err := validate.Required("unresponsive", "body", m.Unresponsive); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APITimeout) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APITimeout) UnmarshalBinary(b []byte) error {
	var res APITimeout
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
