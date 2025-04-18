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

// AccountcommonGroupAndRoleMappingForPatch Accountcommon group and role mapping for patch
//
// swagger:model Accountcommon group and role mapping for patch.
type AccountcommonGroupAndRoleMappingForPatch struct {

	// role assign namespaces, if empty, then the role must a global and will assign with * as namespace
	AssignNamespaces []string `json:"assignNamespaces,omitempty"`

	// gmail account group, for now, we only accept email as the group name
	// Required: true
	Group *string `json:"group"`

	// role that will assign to if match this group
	RoleID string `json:"roleId,omitempty"`
}

// Validate validates this Accountcommon group and role mapping for patch
func (m *AccountcommonGroupAndRoleMappingForPatch) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGroup(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonGroupAndRoleMappingForPatch) validateGroup(formats strfmt.Registry) error {

	if err := validate.Required("group", "body", m.Group); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonGroupAndRoleMappingForPatch) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonGroupAndRoleMappingForPatch) UnmarshalBinary(b []byte) error {
	var res AccountcommonGroupAndRoleMappingForPatch
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
