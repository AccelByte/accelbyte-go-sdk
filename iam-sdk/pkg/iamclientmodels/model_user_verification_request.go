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

// ModelUserVerificationRequest Model user verification request
//
// swagger:model Model user verification request.
type ModelUserVerificationRequest struct {

	// code
	// Required: true
	Code *string `json:"Code"`

	// contacttype
	// Required: true
	ContactType *string `json:"ContactType"`

	// languagetag
	// Required: true
	LanguageTag *string `json:"LanguageTag"`

	// validateonly
	// Required: true
	ValidateOnly *bool `json:"validateOnly"`
}

// Validate validates this Model user verification request
func (m *ModelUserVerificationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateContactType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLanguageTag(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateValidateOnly(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserVerificationRequest) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("Code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserVerificationRequest) validateContactType(formats strfmt.Registry) error {

	if err := validate.Required("ContactType", "body", m.ContactType); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserVerificationRequest) validateLanguageTag(formats strfmt.Registry) error {

	if err := validate.Required("LanguageTag", "body", m.LanguageTag); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserVerificationRequest) validateValidateOnly(formats strfmt.Registry) error {

	if err := validate.Required("validateOnly", "body", m.ValidateOnly); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserVerificationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserVerificationRequest) UnmarshalBinary(b []byte) error {
	var res ModelUserVerificationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
