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

// ModelCursorGetUserResponse Model cursor get user response
//
// swagger:model Model cursor get user response.
type ModelCursorGetUserResponse struct {

	// cursor
	// Required: true
	Cursor *AccountcommonQueryCursor `json:"cursor"`

	// data
	// Required: true
	Data []*ModelCursorGetUserResponseData `json:"data"`
}

// Validate validates this Model cursor get user response
func (m *ModelCursorGetUserResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCursor(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateData(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelCursorGetUserResponse) validateCursor(formats strfmt.Registry) error {

	if err := validate.Required("cursor", "body", m.Cursor); err != nil {
		return err
	}

	if m.Cursor != nil {
		if err := m.Cursor.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("cursor")
			}
			return err
		}
	}

	return nil
}

func (m *ModelCursorGetUserResponse) validateData(formats strfmt.Registry) error {

	if err := validate.Required("data", "body", m.Data); err != nil {
		return err
	}

	for i := 0; i < len(m.Data); i++ {
		if swag.IsZero(m.Data[i]) { // not required
			continue
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCursorGetUserResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCursorGetUserResponse) UnmarshalBinary(b []byte) error {
	var res ModelCursorGetUserResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
