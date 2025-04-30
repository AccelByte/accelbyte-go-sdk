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

// ModelCursorGetUserRequest Model cursor get user request
//
// swagger:model Model cursor get user request.
type ModelCursorGetUserRequest struct {

	// cursor
	Cursor *AccountcommonQueryCursor `json:"cursor,omitempty"`

	// selected field
	Fields []string `json:"fields,omitempty"`

	// limit, 1~2000
	// Required: true
	// Format: int32
	Limit *int32 `json:"limit"`
}

// Validate validates this Model cursor get user request
func (m *ModelCursorGetUserRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLimit(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelCursorGetUserRequest) validateLimit(formats strfmt.Registry) error {

	if err := validate.Required("limit", "body", m.Limit); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCursorGetUserRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCursorGetUserRequest) UnmarshalBinary(b []byte) error {
	var res ModelCursorGetUserRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
