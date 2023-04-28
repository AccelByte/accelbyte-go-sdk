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

// ModelsSessionPlayerHistory Models session player history
//
// swagger:model Models session player history.
type ModelsSessionPlayerHistory struct {

	// action
	// Required: true
	Action *string `json:"Action"`

	// date
	// Required: true
	// Format: date-time
	Date strfmt.DateTime `json:"Date"`

	// userid
	// Required: true
	UserID *string `json:"UserID"`
}

// Validate validates this Models session player history
func (m *ModelsSessionPlayerHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDate(formats); err != nil {
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

func (m *ModelsSessionPlayerHistory) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("Action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionPlayerHistory) validateDate(formats strfmt.Registry) error {

	if err := validate.Required("Date", "body", strfmt.DateTime(m.Date)); err != nil {
		return err
	}

	if err := validate.FormatOf("Date", "body", "date-time", m.Date.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionPlayerHistory) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSessionPlayerHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSessionPlayerHistory) UnmarshalBinary(b []byte) error {
	var res ModelsSessionPlayerHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
