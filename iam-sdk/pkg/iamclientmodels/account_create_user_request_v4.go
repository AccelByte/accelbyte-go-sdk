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

// AccountCreateUserRequestV4 Account create user request V4
//
// swagger:model Account create user request V4.
type AccountCreateUserRequestV4 struct {

	// acceptedpolicies
	AcceptedPolicies []*LegalAcceptedPoliciesRequest `json:"acceptedPolicies,omitempty"`

	// authtype
	// Enum: ['EMAILPASSWD']
	// Required: true
	AuthType *string `json:"authType"`

	// code
	Code string `json:"code,omitempty"`

	// country
	// Required: true
	Country *string `json:"country"`

	// dateofbirth
	DateOfBirth string `json:"dateOfBirth,omitempty"`

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// emailaddress
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// password
	Password string `json:"password,omitempty"`

	// passwordmd5sum
	PasswordMD5Sum string `json:"passwordMD5Sum,omitempty"`

	// reachminimumage
	ReachMinimumAge bool `json:"reachMinimumAge"`

	// username
	// Required: true
	Username *string `json:"username"`
}

// Validate validates this Account create user request V4
func (m *AccountCreateUserRequestV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAuthType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCountry(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEmailAddress(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUsername(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var accountCreateUserRequestV4TypeAuthTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EMAILPASSWD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		accountCreateUserRequestV4TypeAuthTypePropEnum = append(accountCreateUserRequestV4TypeAuthTypePropEnum, v)
	}
}

const (

	// AccountCreateUserRequestV4AuthTypeEMAILPASSWD captures enum value "EMAILPASSWD"
	AccountCreateUserRequestV4AuthTypeEMAILPASSWD string = "EMAILPASSWD"
)

// prop value enum
func (m *AccountCreateUserRequestV4) validateAuthTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, accountCreateUserRequestV4TypeAuthTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AccountCreateUserRequestV4) validateAuthType(formats strfmt.Registry) error {

	if err := validate.Required("authType", "body", m.AuthType); err != nil {
		return err
	}

	// value enum
	if err := m.validateAuthTypeEnum("authType", "body", *m.AuthType); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateUserRequestV4) validateCountry(formats strfmt.Registry) error {

	if err := validate.Required("country", "body", m.Country); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateUserRequestV4) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateUserRequestV4) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountCreateUserRequestV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountCreateUserRequestV4) UnmarshalBinary(b []byte) error {
	var res AccountCreateUserRequestV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
