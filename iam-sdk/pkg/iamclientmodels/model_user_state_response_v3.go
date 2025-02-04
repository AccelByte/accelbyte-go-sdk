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

// ModelUserStateResponseV3 Model user state response V3
//
// swagger:model Model user state response V3.
type ModelUserStateResponseV3 struct {

	// emailverified
	// Required: true
	EmailVerified *bool `json:"emailVerified"`

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// If the account has email address, then it is full account
	// Required: true
	FullAccount *bool `json:"fullAccount"`

	// testaccount
	// Required: true
	TestAccount *bool `json:"testAccount"`
}

// Validate validates this Model user state response V3
func (m *ModelUserStateResponseV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEmailVerified(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFullAccount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTestAccount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserStateResponseV3) validateEmailVerified(formats strfmt.Registry) error {

	if err := validate.Required("emailVerified", "body", m.EmailVerified); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserStateResponseV3) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserStateResponseV3) validateFullAccount(formats strfmt.Registry) error {

	if err := validate.Required("fullAccount", "body", m.FullAccount); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserStateResponseV3) validateTestAccount(formats strfmt.Registry) error {

	if err := validate.Required("testAccount", "body", m.TestAccount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserStateResponseV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserStateResponseV3) UnmarshalBinary(b []byte) error {
	var res ModelUserStateResponseV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
