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

// ModelInviteUserRequestV3 Model invite user request V3
//
// swagger:model Model invite user request V3.
type ModelInviteUserRequestV3 struct {

	// emailaddresses
	// Required: true
	EmailAddresses []string `json:"emailAddresses"`

	// isadmin
	// Required: true
	IsAdmin *bool `json:"isAdmin"`

	// languagetag
	LanguageTag string `json:"languageTag,omitempty"`

	// DEPRECATED. multi tenant studio namespace
	Namespace string `json:"namespace,omitempty"`

	// roles
	// Required: true
	Roles []string `json:"roles"`
}

// Validate validates this Model invite user request V3
func (m *ModelInviteUserRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEmailAddresses(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsAdmin(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoles(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelInviteUserRequestV3) validateEmailAddresses(formats strfmt.Registry) error {

	if err := validate.Required("emailAddresses", "body", m.EmailAddresses); err != nil {
		return err
	}

	return nil
}

func (m *ModelInviteUserRequestV3) validateIsAdmin(formats strfmt.Registry) error {

	if err := validate.Required("isAdmin", "body", m.IsAdmin); err != nil {
		return err
	}

	return nil
}

func (m *ModelInviteUserRequestV3) validateRoles(formats strfmt.Registry) error {

	if err := validate.Required("roles", "body", m.Roles); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelInviteUserRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelInviteUserRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelInviteUserRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
