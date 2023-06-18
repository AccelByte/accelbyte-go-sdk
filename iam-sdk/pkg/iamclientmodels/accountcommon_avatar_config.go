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

// AccountcommonAvatarConfig Accountcommon avatar config
//
// swagger:model Accountcommon avatar config.
type AccountcommonAvatarConfig struct {

	// allowedprefixes
	// Required: true
	AllowedPrefixes []string `json:"allowedPrefixes"`

	// preferregex
	// Required: true
	PreferRegex *bool `json:"preferRegex"`

	// regex
	// Required: true
	Regex *string `json:"regex"`
}

// Validate validates this Accountcommon avatar config
func (m *AccountcommonAvatarConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllowedPrefixes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePreferRegex(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegex(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonAvatarConfig) validateAllowedPrefixes(formats strfmt.Registry) error {

	if err := validate.Required("allowedPrefixes", "body", m.AllowedPrefixes); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonAvatarConfig) validatePreferRegex(formats strfmt.Registry) error {

	if err := validate.Required("preferRegex", "body", m.PreferRegex); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonAvatarConfig) validateRegex(formats strfmt.Registry) error {

	if err := validate.Required("regex", "body", m.Regex); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonAvatarConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonAvatarConfig) UnmarshalBinary(b []byte) error {
	var res AccountcommonAvatarConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
