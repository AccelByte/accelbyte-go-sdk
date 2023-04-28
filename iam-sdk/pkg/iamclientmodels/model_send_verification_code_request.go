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

// ModelSendVerificationCodeRequest Model send verification code request
//
// swagger:model Model send verification code request.
type ModelSendVerificationCodeRequest struct {

	// context
	Context string `json:"Context,omitempty"`

	// languagetag
	// Required: true
	LanguageTag *string `json:"LanguageTag"`

	// loginid
	// Required: true
	LoginID *string `json:"LoginID"`
}

// Validate validates this Model send verification code request
func (m *ModelSendVerificationCodeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLanguageTag(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLoginID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelSendVerificationCodeRequest) validateLanguageTag(formats strfmt.Registry) error {

	if err := validate.Required("LanguageTag", "body", m.LanguageTag); err != nil {
		return err
	}

	return nil
}

func (m *ModelSendVerificationCodeRequest) validateLoginID(formats strfmt.Registry) error {

	if err := validate.Required("LoginID", "body", m.LoginID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelSendVerificationCodeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelSendVerificationCodeRequest) UnmarshalBinary(b []byte) error {
	var res ModelSendVerificationCodeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
