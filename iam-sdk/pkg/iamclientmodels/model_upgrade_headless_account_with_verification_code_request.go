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

// ModelUpgradeHeadlessAccountWithVerificationCodeRequest Model upgrade headless account with verification code request
//
// swagger:model Model upgrade headless account with verification code request.
type ModelUpgradeHeadlessAccountWithVerificationCodeRequest struct {

	// code
	// Required: true
	Code *string `json:"Code"`

	// password
	// Required: true
	Password *string `json:"Password"`

	// loginid
	// Required: true
	LoginID *string `json:"loginId"`
}

// Validate validates this Model upgrade headless account with verification code request
func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassword(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLoginID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequest) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("Code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequest) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("Password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequest) validateLoginID(formats strfmt.Registry) error {

	if err := validate.Required("loginId", "body", m.LoginID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUpgradeHeadlessAccountWithVerificationCodeRequest) UnmarshalBinary(b []byte) error {
	var res ModelUpgradeHeadlessAccountWithVerificationCodeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
