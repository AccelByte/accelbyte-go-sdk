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

// AccountUpgradeHeadlessAccountRequestV4 Account upgrade headless account request V4
//
// swagger:model Account upgrade headless account request V4.
type AccountUpgradeHeadlessAccountRequestV4 struct {

	// dateofbirth
	DateOfBirth string `json:"dateOfBirth,omitempty"`

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// emailaddress
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// password
	// Required: true
	Password *string `json:"password"`

	// uniquedisplayname
	UniqueDisplayName string `json:"uniqueDisplayName,omitempty"`

	// username
	// Required: true
	Username *string `json:"username"`
}

// Validate validates this Account upgrade headless account request V4
func (m *AccountUpgradeHeadlessAccountRequestV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEmailAddress(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassword(formats); err != nil {
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

func (m *AccountUpgradeHeadlessAccountRequestV4) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *AccountUpgradeHeadlessAccountRequestV4) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

func (m *AccountUpgradeHeadlessAccountRequestV4) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountUpgradeHeadlessAccountRequestV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountUpgradeHeadlessAccountRequestV4) UnmarshalBinary(b []byte) error {
	var res AccountUpgradeHeadlessAccountRequestV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
