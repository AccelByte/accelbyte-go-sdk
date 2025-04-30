// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AccountcommonQueryCursor Accountcommon query cursor
//
// swagger:model Accountcommon query cursor.
type AccountcommonQueryCursor struct {

	// format is RFC3339Nano, example: 2006-01-02T15:04:05.999999999Z07:00
	// Required: true
	CursorTime *string `json:"cursorTime"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Accountcommon query cursor
func (m *AccountcommonQueryCursor) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCursorTime(formats); err != nil {
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

func (m *AccountcommonQueryCursor) validateCursorTime(formats strfmt.Registry) error {

	if err := validate.Required("cursorTime", "body", m.CursorTime); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonQueryCursor) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonQueryCursor) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonQueryCursor) UnmarshalBinary(b []byte) error {
	var res AccountcommonQueryCursor
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
