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

// ModelSendRegisterVerificationCodeRequest Model send register verification code request
//
// swagger:model Model send register verification code request.
type ModelSendRegisterVerificationCodeRequest struct {

	// emailaddress
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// languagetag
	LanguageTag string `json:"languageTag,omitempty"`
}

// Validate validates this Model send register verification code request
func (m *ModelSendRegisterVerificationCodeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEmailAddress(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelSendRegisterVerificationCodeRequest) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelSendRegisterVerificationCodeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelSendRegisterVerificationCodeRequest) UnmarshalBinary(b []byte) error {
	var res ModelSendRegisterVerificationCodeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
