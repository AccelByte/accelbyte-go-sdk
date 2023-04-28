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

// ModelResetPasswordRequest Model reset password request
//
// swagger:model Model reset password request.
type ModelResetPasswordRequest struct {

	// code
	// Required: true
	Code *string `json:"Code"`

	// loginid
	// Required: true
	LoginID *string `json:"LoginID"`

	// newpassword
	// Required: true
	NewPassword *string `json:"NewPassword"`
}

// Validate validates this Model reset password request
func (m *ModelResetPasswordRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLoginID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNewPassword(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelResetPasswordRequest) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("Code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ModelResetPasswordRequest) validateLoginID(formats strfmt.Registry) error {

	if err := validate.Required("LoginID", "body", m.LoginID); err != nil {
		return err
	}

	return nil
}

func (m *ModelResetPasswordRequest) validateNewPassword(formats strfmt.Registry) error {

	if err := validate.Required("NewPassword", "body", m.NewPassword); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelResetPasswordRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelResetPasswordRequest) UnmarshalBinary(b []byte) error {
	var res ModelResetPasswordRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
