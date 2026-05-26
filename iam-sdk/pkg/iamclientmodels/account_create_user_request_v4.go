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

	// Authentication type. Possible value: EMAILPASSWD.
	// Enum: ['EMAILPASSWD']
	// Required: true
	AuthType *string `json:"authType"`

	// Verification code. Required when mandatoryEmailVerificationEnabled config is true. Refer to the config from /iam/v3/public/namespaces/{namespace}/config/{configKey} [GET] API.
	Code string `json:"code,omitempty"`

	// ISO3166-1 alpha-2 two letter country code, e.g. US.
	// Required: true
	Country *string `json:"country"`

	// Date of birth in YYYY-MM-DD format. Valid values are between 1905-01-01 and the current date.
	DateOfBirth string `json:"dateOfBirth,omitempty"`

	// User display name. Refer to /v3/public/namespaces/{namespace}/inputValidations API for rules.
	DisplayName string `json:"displayName,omitempty"`

	// User email address. Refer to /v3/public/namespaces/{namespace}/inputValidations API for rules.
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// User password. Refer to /v3/public/namespaces/{namespace}/inputValidations API for rules.
	Password string `json:"password,omitempty"`

	// passwordmd5sum
	PasswordMD5Sum string `json:"passwordMD5Sum,omitempty"`

	// reachminimumage
	ReachMinimumAge bool `json:"reachMinimumAge"`

	// Unique display name. Required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true. Refer to /v3/public/namespaces/{namespace}/inputValidations API for rules.
	UniqueDisplayName string `json:"uniqueDisplayName,omitempty"`

	// Username. Refer to /v3/public/namespaces/{namespace}/inputValidations API for rules.
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
