// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UserProfileCreate User profile create
//
// swagger:model User profile create.
type UserProfileCreate struct {

	// should be comply with OWASP url format
	AvatarLargeURL string `json:"avatarLargeUrl,omitempty"`

	// should be comply with OWASP url format
	AvatarSmallURL string `json:"avatarSmallUrl,omitempty"`

	// should be comply with OWASP url format
	AvatarURL string `json:"avatarUrl,omitempty"`

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// date of birth, allowed format: yyyy-MM-dd, valid date range from 1905-01-01 until present
	// Format: date
	DateOfBirth *string `json:"dateOfBirth,omitempty"`

	// deprecated
	FirstName string `json:"firstName,omitempty"`

	// language value from language tag, allowed format: en, en-US.<p>Supported language tag : [RFC5646](https://gist.github.com/msikma/8912e62ed866778ff8cd) and [IETF](https://datahub.io/core/language-codes#resource-ietf-language-tags)</p>
	Language string `json:"language,omitempty"`

	// deprecated
	LastName string `json:"lastName,omitempty"`

	// time zone, allowed IANA time zone, e.g.Asia/Shanghai
	TimeZone string `json:"timeZone,omitempty"`
}

// Validate validates this User profile create
func (m *UserProfileCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDateOfBirth(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLanguage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *UserProfileCreate) validateDateOfBirth(formats strfmt.Registry) error {

	if swag.IsZero(m.DateOfBirth) { // not required
		return nil
	}

	if err := validate.FormatOf("dateOfBirth", "body", "date", *m.DateOfBirth, formats); err != nil {
		return err
	}

	return nil
}

// WithDateOfBirth adds the dateOfBirth to the user profile create
func (m *UserProfileCreate) WithDateOfBirth(dateOfBirth *strfmt.Date) *UserProfileCreate {
	m.SetDateOfBirth(dateOfBirth)
	return m
}

// SetDateOfBirth adds the dateOfBirth to the user profile create
func (m *UserProfileCreate) SetDateOfBirth(dateOfBirth *strfmt.Date) {
	date := dateOfBirth.String()
	m.DateOfBirth = &date
}

func (m *UserProfileCreate) validateLanguage(formats strfmt.Registry) error {

	if swag.IsZero(m.Language) { // not required
		return nil
	}

	if err := validate.Pattern("language", "body", string(m.Language), `^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$`); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *UserProfileCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserProfileCreate) UnmarshalBinary(b []byte) error {
	var res UserProfileCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
