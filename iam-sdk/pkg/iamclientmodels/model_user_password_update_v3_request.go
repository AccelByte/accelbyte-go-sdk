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

// ModelUserPasswordUpdateV3Request Model user password update V3 request
//
// swagger:model Model user password update V3 request.
type ModelUserPasswordUpdateV3Request struct {

	// languagetag
	// Required: true
	LanguageTag *string `json:"languageTag"`

	// mfatoken
	MFAToken string `json:"mfaToken,omitempty"`

	// newpassword
	// Required: true
	NewPassword *string `json:"newPassword"`

	// oldpassword
	// Required: true
	OldPassword *string `json:"oldPassword"`
}

// Validate validates this Model user password update V3 request
func (m *ModelUserPasswordUpdateV3Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLanguageTag(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNewPassword(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOldPassword(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserPasswordUpdateV3Request) validateLanguageTag(formats strfmt.Registry) error {

	if err := validate.Required("languageTag", "body", m.LanguageTag); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPasswordUpdateV3Request) validateNewPassword(formats strfmt.Registry) error {

	if err := validate.Required("newPassword", "body", m.NewPassword); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPasswordUpdateV3Request) validateOldPassword(formats strfmt.Registry) error {

	if err := validate.Required("oldPassword", "body", m.OldPassword); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserPasswordUpdateV3Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserPasswordUpdateV3Request) UnmarshalBinary(b []byte) error {
	var res ModelUserPasswordUpdateV3Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
