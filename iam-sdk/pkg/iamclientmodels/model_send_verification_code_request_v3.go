// Code generated by go-swagger; DO NOT EDIT.

package iamclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelSendVerificationCodeRequestV3 model send verification code request v3
//
// swagger:model model.SendVerificationCodeRequestV3
type ModelSendVerificationCodeRequestV3 struct {

	// context
	Context string `json:"context,omitempty"`

	// email address
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// language tag
	LanguageTag string `json:"languageTag,omitempty"`
}

// Validate validates this model send verification code request v3
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
