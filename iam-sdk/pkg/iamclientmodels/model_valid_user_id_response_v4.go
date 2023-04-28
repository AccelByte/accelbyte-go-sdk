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

// ModelValidUserIDResponseV4 Model valid user ID response V4
//
// swagger:model Model valid user ID response V4.
type ModelValidUserIDResponseV4 struct {

	// indicate if user is exist or not
	// Required: true
	Exists *bool `json:"exists"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model valid user ID response V4
func (m *ModelValidUserIDResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExists(formats); err != nil {
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

func (m *ModelValidUserIDResponseV4) validateExists(formats strfmt.Registry) error {

	if err := validate.Required("exists", "body", m.Exists); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidUserIDResponseV4) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelValidUserIDResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelValidUserIDResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelValidUserIDResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
