// Code generated by go-swagger; DO NOT EDIT.

package basicclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UserProfileCreate A DTO object for creating user profile API call.
//
// swagger:model UserProfileCreate
type UserProfileCreate struct {

	// should be comply with OWASP url format
	AvatarLargeURL string `json:"avatarLargeUrl,omitempty"`

	// should be comply with OWASP url format
	AvatarSmallURL string `json:"avatarSmallUrl,omitempty"`

	// should be comply with OWASP url format
	AvatarURL string `json:"avatarUrl,omitempty"`

	// custom attributes
	CustomAttributes map[string]interface{} `json:"customAttributes,omitempty"`

	// date of birth, allowed format: yyyy-MM-dd, valid date range from 1905-01-01 until present
	// Format: date
	DateOfBirth strfmt.Date `json:"dateOfBirth,omitempty"`

	// first name
	FirstName string `json:"firstName,omitempty"`

	// language value from language tag, allowed format: en, en-US
	Language string `json:"language,omitempty"`

	// last name
	LastName string `json:"lastName,omitempty"`

	// time zone, allowed IANA time zone, e.g.Asia/Shanghai
	TimeZone string `json:"timeZone,omitempty"`
}

// Validate validates this user profile create
func (m *UserProfileCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDateOfBirth(formats); err != nil {
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

	if err := validate.FormatOf("dateOfBirth", "body", "date", m.DateOfBirth.String(), formats); err != nil {
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
