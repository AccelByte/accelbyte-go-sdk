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

// AccountcommonAllowedPermission Accountcommon allowed permission
//
// swagger:model Accountcommon allowed permission.
type AccountcommonAllowedPermission struct {

	// allowedactions
	// Required: true
	AllowedActions []int64 `json:"allowedActions"`

	// resource
	// Required: true
	Resource *string `json:"resource"`
}

// Validate validates this Accountcommon allowed permission
func (m *AccountcommonAllowedPermission) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllowedActions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResource(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonAllowedPermission) validateAllowedActions(formats strfmt.Registry) error {

	if err := validate.Required("allowedActions", "body", m.AllowedActions); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonAllowedPermission) validateResource(formats strfmt.Registry) error {

	if err := validate.Required("resource", "body", m.Resource); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonAllowedPermission) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonAllowedPermission) UnmarshalBinary(b []byte) error {
	var res AccountcommonAllowedPermission
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
