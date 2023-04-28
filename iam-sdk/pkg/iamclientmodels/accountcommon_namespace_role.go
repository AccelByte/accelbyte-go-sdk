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

// AccountcommonNamespaceRole Accountcommon namespace role
//
// swagger:model Accountcommon namespace role.
type AccountcommonNamespaceRole struct {

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// roleid
	// Required: true
	RoleID *string `json:"roleId"`
}

// Validate validates this Accountcommon namespace role
func (m *AccountcommonNamespaceRole) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoleID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonNamespaceRole) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonNamespaceRole) validateRoleID(formats strfmt.Registry) error {

	if err := validate.Required("roleId", "body", m.RoleID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonNamespaceRole) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonNamespaceRole) UnmarshalBinary(b []byte) error {
	var res AccountcommonNamespaceRole
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
