// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gametelemetryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ValidationError Validation error
//
// swagger:model Validation error.
type ValidationError struct {

	// loc
	// Required: true
	Loc []string `json:"loc"`

	// msg
	// Required: true
	Msg *string `json:"msg"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Validation error
func (m *ValidationError) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLoc(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMsg(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ValidationError) validateLoc(formats strfmt.Registry) error {

	if err := validate.Required("loc", "body", m.Loc); err != nil {
		return err
	}

	return nil
}

func (m *ValidationError) validateMsg(formats strfmt.Registry) error {

	if err := validate.Required("msg", "body", m.Msg); err != nil {
		return err
	}

	return nil
}

func (m *ValidationError) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ValidationError) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ValidationError) UnmarshalBinary(b []byte) error {
	var res ValidationError
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
