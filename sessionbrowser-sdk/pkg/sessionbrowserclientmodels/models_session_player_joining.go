// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionbrowserclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsSessionPlayerJoining Models session player joining
//
// swagger:model Models session player joining.
type ModelsSessionPlayerJoining struct {

	// date
	// Required: true
	// Format: date-time
	Date strfmt.DateTime `json:"Date"`

	// state
	// Required: true
	State *string `json:"State"`

	// userid
	// Required: true
	UserID *string `json:"UserID"`
}

// Validate validates this Models session player joining
func (m *ModelsSessionPlayerJoining) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateState(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsSessionPlayerJoining) validateDate(formats strfmt.Registry) error {

	if err := validate.Required("Date", "body", strfmt.DateTime(m.Date)); err != nil {
		return err
	}

	if err := validate.FormatOf("Date", "body", "date-time", m.Date.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionPlayerJoining) validateState(formats strfmt.Registry) error {

	if err := validate.Required("State", "body", m.State); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionPlayerJoining) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSessionPlayerJoining) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSessionPlayerJoining) UnmarshalBinary(b []byte) error {
	var res ModelsSessionPlayerJoining
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
