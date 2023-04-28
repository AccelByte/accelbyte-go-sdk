// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AccountCreateTestUserRequestV4 Account create test user request V4
//
// swagger:model Account create test user request V4.
type AccountCreateTestUserRequestV4 struct {

	// acceptedpolicies
	AcceptedPolicies []*LegalAcceptedPoliciesRequest `json:"acceptedPolicies,omitempty"`

	// authtype
	// Enum: ['EMAILPASSWD']
	// Required: true
	AuthType *string `json:"authType"`

	// country
	// Required: true
	Country *string `json:"country"`

	// dateofbirth
	// Required: true
	DateOfBirth *string `json:"dateOfBirth"`

	// displayname
	// Required: true
	DisplayName *string `json:"displayName"`

	// emailaddress
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// password
	// Required: true
	Password *string `json:"password"`

	// passwordmd5sum
	// Required: true
	PasswordMD5Sum *string `json:"passwordMD5Sum"`

	// username
	// Required: true
	Username *string `json:"username"`

	// verified
	// Required: true
	Verified *bool `json:"verified"`
}

// Validate validates this Account create test user request V4
func (m *AccountCreateTestUserRequestV4) Validate(formats strfmt.Registry) error {
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
	if err := m.validatePassword(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePasswordMD5Sum(formats); err != nil {
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

var accountCreateTestUserRequestV4TypeAuthTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EMAILPASSWD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		accountCreateTestUserRequestV4TypeAuthTypePropEnum = append(accountCreateTestUserRequestV4TypeAuthTypePropEnum, v)
	}
}

const (

	// AccountCreateTestUserRequestV4AuthTypeEMAILPASSWD captures enum value "EMAILPASSWD"
	AccountCreateTestUserRequestV4AuthTypeEMAILPASSWD string = "EMAILPASSWD"
)

// prop value enum
func (m *AccountCreateTestUserRequestV4) validateAuthTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, accountCreateTestUserRequestV4TypeAuthTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AccountCreateTestUserRequestV4) validateAuthType(formats strfmt.Registry) error {

	if err := validate.Required("authType", "body", m.AuthType); err != nil {
		return err
	}

	// value enum
	if err := m.validateAuthTypeEnum("authType", "body", *m.AuthType); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserRequestV4) validateCountry(formats strfmt.Registry) error {

	if err := validate.Required("country", "body", m.Country); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserRequestV4) validateDateOfBirth(formats strfmt.Registry) error {

	if err := validate.Required("dateOfBirth", "body", m.DateOfBirth); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserRequestV4) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserRequestV4) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserRequestV4) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserRequestV4) validatePasswordMD5Sum(formats strfmt.Registry) error {

	if err := validate.Required("passwordMD5Sum", "body", m.PasswordMD5Sum); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserRequestV4) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUserRequestV4) validateVerified(formats strfmt.Registry) error {

	if err := validate.Required("verified", "body", m.Verified); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountCreateTestUserRequestV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountCreateTestUserRequestV4) UnmarshalBinary(b []byte) error {
	var res AccountCreateTestUserRequestV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
