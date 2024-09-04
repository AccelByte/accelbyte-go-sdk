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

// AccountcommonReplaceRolePermission Accountcommon replace role permission
//
// swagger:model Accountcommon replace role permission.
type AccountcommonReplaceRolePermission struct {

	// replacement
	// Required: true
	Replacement *AccountcommonOverrideRolePermission `json:"replacement"`

	// target
	// Required: true
	Target *string `json:"target"`
}

// Validate validates this Accountcommon replace role permission
func (m *AccountcommonReplaceRolePermission) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateReplacement(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTarget(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonReplaceRolePermission) validateReplacement(formats strfmt.Registry) error {

	if err := validate.Required("replacement", "body", m.Replacement); err != nil {
		return err
	}

	if m.Replacement != nil {
		if err := m.Replacement.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("replacement")
			}
			return err
		}
	}

	return nil
}

func (m *AccountcommonReplaceRolePermission) validateTarget(formats strfmt.Registry) error {

	if err := validate.Required("target", "body", m.Target); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonReplaceRolePermission) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonReplaceRolePermission) UnmarshalBinary(b []byte) error {
	var res AccountcommonReplaceRolePermission
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
