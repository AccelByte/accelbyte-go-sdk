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

// ModelUserVerificationRequestV3 Model user verification request V3
//
// swagger:model Model user verification request V3.
type ModelUserVerificationRequestV3 struct {

	// code
	// Required: true
	Code *string `json:"code"`

	// contacttype
	// Required: true
	ContactType *string `json:"contactType"`

	// languagetag
	LanguageTag string `json:"languageTag,omitempty"`

	// validateonly
	ValidateOnly bool `json:"validateOnly"`
}

// Validate validates this Model user verification request V3
func (m *ModelUserVerificationRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateContactType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserVerificationRequestV3) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserVerificationRequestV3) validateContactType(formats strfmt.Registry) error {

	if err := validate.Required("contactType", "body", m.ContactType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserVerificationRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserVerificationRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelUserVerificationRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
