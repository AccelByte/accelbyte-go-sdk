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

// ModelUpgradeHeadlessAccountV3Request Model upgrade headless account V3 request
//
// swagger:model Model upgrade headless account V3 request.
type ModelUpgradeHeadlessAccountV3Request struct {

	// new email address
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// new password
	// Required: true
	Password *string `json:"password"`
}

// Validate validates this Model upgrade headless account V3 request
func (m *ModelUpgradeHeadlessAccountV3Request) Validate(formats strfmt.Registry) error {
	var res []error

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

func (m *ModelUpgradeHeadlessAccountV3Request) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *ModelUpgradeHeadlessAccountV3Request) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUpgradeHeadlessAccountV3Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUpgradeHeadlessAccountV3Request) UnmarshalBinary(b []byte) error {
	var res ModelUpgradeHeadlessAccountV3Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
