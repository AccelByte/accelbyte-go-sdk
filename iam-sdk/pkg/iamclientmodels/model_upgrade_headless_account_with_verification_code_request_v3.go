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

// ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3 Model upgrade headless account with verification code request V3
//
// swagger:model Model upgrade headless account with verification code request V3.
type ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3 struct {

	// code
	// Required: true
	Code *string `json:"code"`

	// country
	Country string `json:"country,omitempty"`

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

	// validateonly
	ValidateOnly bool `json:"validateOnly"`
}

// Validate validates this Model upgrade headless account with verification code request V3
func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEmailAddress(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassword(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
