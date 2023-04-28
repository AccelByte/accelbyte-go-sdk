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

// ModelUserPasswordUpdateRequest Model user password update request
//
// swagger:model Model user password update request.
type ModelUserPasswordUpdateRequest struct {

	// languagetag
	// Required: true
	LanguageTag *string `json:"LanguageTag"`

	// newpassword
	// Required: true
	NewPassword *string `json:"NewPassword"`

	// oldpassword
	// Required: true
	OldPassword *string `json:"OldPassword"`
}

// Validate validates this Model user password update request
func (m *ModelUserPasswordUpdateRequest) Validate(formats strfmt.Registry) error {
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

func (m *ModelUserPasswordUpdateRequest) validateLanguageTag(formats strfmt.Registry) error {

	if err := validate.Required("LanguageTag", "body", m.LanguageTag); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPasswordUpdateRequest) validateNewPassword(formats strfmt.Registry) error {

	if err := validate.Required("NewPassword", "body", m.NewPassword); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPasswordUpdateRequest) validateOldPassword(formats strfmt.Registry) error {

	if err := validate.Required("OldPassword", "body", m.OldPassword); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserPasswordUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserPasswordUpdateRequest) UnmarshalBinary(b []byte) error {
	var res ModelUserPasswordUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
