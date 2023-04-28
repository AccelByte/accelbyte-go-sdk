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

// AccountcommonClientPermission Accountcommon client permission
//
// swagger:model Accountcommon client permission.
type AccountcommonClientPermission struct {

	// action
	// Required: true
	// Format: int32
	Action *int32 `json:"Action"`

	// resource
	// Required: true
	Resource *string `json:"Resource"`
}

// Validate validates this Accountcommon client permission
func (m *AccountcommonClientPermission) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
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

func (m *AccountcommonClientPermission) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("Action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonClientPermission) validateResource(formats strfmt.Registry) error {

	if err := validate.Required("Resource", "body", m.Resource); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonClientPermission) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonClientPermission) UnmarshalBinary(b []byte) error {
	var res AccountcommonClientPermission
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
