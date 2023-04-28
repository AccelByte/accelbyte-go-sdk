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

// ModelInviteUserRequestV4 Model invite user request V4
//
// swagger:model Model invite user request V4.
type ModelInviteUserRequestV4 struct {

	// assignednamespaces
	// Required: true
	AssignedNamespaces []string `json:"assignedNamespaces"`

	// emailaddresses
	// Required: true
	EmailAddresses []string `json:"emailAddresses"`

	// isadmin
	// Required: true
	IsAdmin *bool `json:"isAdmin"`

	// multi tenant studio namespace
	Namespace string `json:"namespace,omitempty"`

	// roleid
	RoleID string `json:"roleId,omitempty"`
}

// Validate validates this Model invite user request V4
func (m *ModelInviteUserRequestV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAssignedNamespaces(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEmailAddresses(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsAdmin(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelInviteUserRequestV4) validateAssignedNamespaces(formats strfmt.Registry) error {

	if err := validate.Required("assignedNamespaces", "body", m.AssignedNamespaces); err != nil {
		return err
	}

	return nil
}

func (m *ModelInviteUserRequestV4) validateEmailAddresses(formats strfmt.Registry) error {

	if err := validate.Required("emailAddresses", "body", m.EmailAddresses); err != nil {
		return err
	}

	return nil
}

func (m *ModelInviteUserRequestV4) validateIsAdmin(formats strfmt.Registry) error {

	if err := validate.Required("isAdmin", "body", m.IsAdmin); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelInviteUserRequestV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelInviteUserRequestV4) UnmarshalBinary(b []byte) error {
	var res ModelInviteUserRequestV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
