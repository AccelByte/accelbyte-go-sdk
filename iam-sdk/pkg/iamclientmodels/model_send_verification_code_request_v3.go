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

// ModelSendVerificationCodeRequestV3 Model send verification code request V3
//
// swagger:model Model send verification code request V3.
type ModelSendVerificationCodeRequestV3 struct {

	// context
	Context string `json:"context,omitempty"`

	// emailaddress
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// languagetag
	LanguageTag string `json:"languageTag,omitempty"`
}

// Validate validates this Model send verification code request V3
func (m *ModelSendVerificationCodeRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEmailAddress(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelSendVerificationCodeRequestV3) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelSendVerificationCodeRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelSendVerificationCodeRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelSendVerificationCodeRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
