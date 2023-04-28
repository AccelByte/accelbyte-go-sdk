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

// AccountcommonInputValidationDescription Accountcommon input validation description
//
// swagger:model Accountcommon input validation description.
type AccountcommonInputValidationDescription struct {

	// language
	// Required: true
	Language *string `json:"language"`

	// message
	// Required: true
	Message []string `json:"message"`
}

// Validate validates this Accountcommon input validation description
func (m *AccountcommonInputValidationDescription) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMessage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonInputValidationDescription) validateLanguage(formats strfmt.Registry) error {

	if err := validate.Required("language", "body", m.Language); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonInputValidationDescription) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonInputValidationDescription) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonInputValidationDescription) UnmarshalBinary(b []byte) error {
	var res AccountcommonInputValidationDescription
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
