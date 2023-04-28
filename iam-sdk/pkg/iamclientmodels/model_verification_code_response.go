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

// ModelVerificationCodeResponse Model verification code response
//
// swagger:model Model verification code response.
type ModelVerificationCodeResponse struct {

	// accountregistration
	// Required: true
	AccountRegistration *string `json:"accountRegistration"`

	// accountupgrade
	// Required: true
	AccountUpgrade *string `json:"accountUpgrade"`

	// passwordreset
	// Required: true
	PasswordReset *string `json:"passwordReset"`

	// updateemail
	// Required: true
	UpdateEmail *string `json:"updateEmail"`
}

// Validate validates this Model verification code response
func (m *ModelVerificationCodeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAccountRegistration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAccountUpgrade(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePasswordReset(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdateEmail(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelVerificationCodeResponse) validateAccountRegistration(formats strfmt.Registry) error {

	if err := validate.Required("accountRegistration", "body", m.AccountRegistration); err != nil {
		return err
	}

	return nil
}

func (m *ModelVerificationCodeResponse) validateAccountUpgrade(formats strfmt.Registry) error {

	if err := validate.Required("accountUpgrade", "body", m.AccountUpgrade); err != nil {
		return err
	}

	return nil
}

func (m *ModelVerificationCodeResponse) validatePasswordReset(formats strfmt.Registry) error {

	if err := validate.Required("passwordReset", "body", m.PasswordReset); err != nil {
		return err
	}

	return nil
}

func (m *ModelVerificationCodeResponse) validateUpdateEmail(formats strfmt.Registry) error {

	if err := validate.Required("updateEmail", "body", m.UpdateEmail); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelVerificationCodeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelVerificationCodeResponse) UnmarshalBinary(b []byte) error {
	var res ModelVerificationCodeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
