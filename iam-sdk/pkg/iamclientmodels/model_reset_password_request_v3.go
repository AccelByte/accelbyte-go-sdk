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

// ModelResetPasswordRequestV3 Model reset password request V3
//
// swagger:model Model reset password request V3.
type ModelResetPasswordRequestV3 struct {

	// for tracking which client this request comes from
	ClientID string `json:"clientId,omitempty"`

	// code
	// Required: true
	Code *string `json:"code"`

	// emailaddress
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// languagetag
	LanguageTag string `json:"languageTag,omitempty"`

	// newpassword
	// Required: true
	NewPassword *string `json:"newPassword"`
}

// Validate validates this Model reset password request V3
func (m *ModelResetPasswordRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEmailAddress(formats); err != nil {
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

func (m *ModelResetPasswordRequestV3) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ModelResetPasswordRequestV3) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *ModelResetPasswordRequestV3) validateNewPassword(formats strfmt.Registry) error {

	if err := validate.Required("newPassword", "body", m.NewPassword); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelResetPasswordRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelResetPasswordRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelResetPasswordRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
