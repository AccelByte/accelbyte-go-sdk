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

// AccountCreateTestUserResponseV4 account create test user response v4
//
// swagger:model account.createTestUserResponseV4
type AccountCreateTestUserResponseV4 struct {

	// auth type
	// Required: true
	AuthType *string `json:"authType"`

	// country
	// Required: true
	Country *string `json:"country"`

	// date of birth
	// Required: true
	// Format: date-time
	DateOfBirth strfmt.DateTime `json:"dateOfBirth"`

	// display name
	// Required: true
	DisplayName *string `json:"displayName"`

	// email address
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// password
	// Required: true
	Password *string `json:"password"`

	// user Id
	// Required: true
	UserID *string `json:"userId"`

	// username
	// Required: true
	Username *string `json:"username"`

	// verified
	// Required: true
	Verified *bool `json:"verified"`
}

// Validate validates this account create test user response v4
func (m *AccountCreateTestUserResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAuthType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCountry(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateDateOfBirth(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateEmailAddress(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePassword(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUsername(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateVerified(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountCreateTestUserResponseV4) validateAuthType(formats strfmt.Registry) error {

	if err := validate.Required("authType", "body", m.AuthType); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserResponseV4) validateCountry(formats strfmt.Registry) error {

	if err := validate.Required("country", "body", m.Country); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserResponseV4) validateDateOfBirth(formats strfmt.Registry) error {

	if err := validate.Required("dateOfBirth", "body", strfmt.DateTime(m.DateOfBirth)); err != nil {
		return err
	}

	if err := validate.FormatOf("dateOfBirth", "body", "date-time", m.DateOfBirth.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserResponseV4) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserResponseV4) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserResponseV4) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserResponseV4) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserResponseV4) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserResponseV4) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserResponseV4) validateVerified(formats strfmt.Registry) error {

	if err := validate.Required("verified", "body", m.Verified); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountCreateTestUserResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountCreateTestUserResponseV4) UnmarshalBinary(b []byte) error {
	var res AccountCreateTestUserResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}