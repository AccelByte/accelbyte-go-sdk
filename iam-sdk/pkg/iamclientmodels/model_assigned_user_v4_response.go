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

// ModelAssignedUserV4Response Model assigned user V4 response
//
// swagger:model Model assigned user V4 response.
type ModelAssignedUserV4Response struct {

	// assignednamespaces
	// Required: true
	AssignedNamespaces []string `json:"assignedNamespaces"`

	// displayname
	// Required: true
	DisplayName *string `json:"displayName"`

	// email
	// Required: true
	Email *string `json:"email"`

	// roleid
	// Required: true
	RoleID *string `json:"roleId"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model assigned user V4 response
func (m *ModelAssignedUserV4Response) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAssignedNamespaces(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEmail(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoleID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelAssignedUserV4Response) validateAssignedNamespaces(formats strfmt.Registry) error {

	if err := validate.Required("assignedNamespaces", "body", m.AssignedNamespaces); err != nil {
		return err
	}

	return nil
}

func (m *ModelAssignedUserV4Response) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelAssignedUserV4Response) validateEmail(formats strfmt.Registry) error {

	if err := validate.Required("email", "body", m.Email); err != nil {
		return err
	}

	return nil
}

func (m *ModelAssignedUserV4Response) validateRoleID(formats strfmt.Registry) error {

	if err := validate.Required("roleId", "body", m.RoleID); err != nil {
		return err
	}

	return nil
}

func (m *ModelAssignedUserV4Response) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelAssignedUserV4Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelAssignedUserV4Response) UnmarshalBinary(b []byte) error {
	var res ModelAssignedUserV4Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
