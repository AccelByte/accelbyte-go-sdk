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

// ModelAssignUserV4Request Model assign user V4 request
//
// swagger:model Model assign user V4 request.
type ModelAssignUserV4Request struct {

	// namespaces to be assigned on role
	// Required: true
	AssignedNamespaces []string `json:"assignedNamespaces"`

	// user's namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model assign user V4 request
func (m *ModelAssignUserV4Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAssignedNamespaces(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *ModelAssignUserV4Request) validateAssignedNamespaces(formats strfmt.Registry) error {

	if err := validate.Required("assignedNamespaces", "body", m.AssignedNamespaces); err != nil {
		return err
	}

	return nil
}

func (m *ModelAssignUserV4Request) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelAssignUserV4Request) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelAssignUserV4Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelAssignUserV4Request) UnmarshalBinary(b []byte) error {
	var res ModelAssignUserV4Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
