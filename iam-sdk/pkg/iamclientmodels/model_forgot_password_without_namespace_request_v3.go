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

// ModelForgotPasswordWithoutNamespaceRequestV3 Model forgot password without namespace request V3
//
// swagger:model Model forgot password without namespace request V3.
type ModelForgotPasswordWithoutNamespaceRequestV3 struct {

	// clientid
	ClientID string `json:"clientId,omitempty"`

	// emailaddress
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// languagetag
	LanguageTag string `json:"languageTag,omitempty"`
}

// Validate validates this Model forgot password without namespace request V3
func (m *ModelForgotPasswordWithoutNamespaceRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEmailAddress(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelForgotPasswordWithoutNamespaceRequestV3) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelForgotPasswordWithoutNamespaceRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelForgotPasswordWithoutNamespaceRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelForgotPasswordWithoutNamespaceRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
