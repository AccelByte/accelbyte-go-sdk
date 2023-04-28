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

// ModelUpgradeHeadlessAccountRequest Model upgrade headless account request
//
// swagger:model Model upgrade headless account request.
type ModelUpgradeHeadlessAccountRequest struct {

	// new email address or phone number
	// Required: true
	LoginID *string `json:"LoginID"`

	// new password
	// Required: true
	Password *string `json:"Password"`
}

// Validate validates this Model upgrade headless account request
func (m *ModelUpgradeHeadlessAccountRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLoginID(formats); err != nil {
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

func (m *ModelUpgradeHeadlessAccountRequest) validateLoginID(formats strfmt.Registry) error {

	if err := validate.Required("LoginID", "body", m.LoginID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUpgradeHeadlessAccountRequest) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("Password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUpgradeHeadlessAccountRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUpgradeHeadlessAccountRequest) UnmarshalBinary(b []byte) error {
	var res ModelUpgradeHeadlessAccountRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
