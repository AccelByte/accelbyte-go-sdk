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

// AccountcommonPermission Accountcommon permission
//
// swagger:model Accountcommon permission.
type AccountcommonPermission struct {

	// action
	// Required: true
	// Format: int32
	Action *int32 `json:"Action"`

	// resource
	// Required: true
	Resource *string `json:"Resource"`

	// schedaction
	// Format: int32
	SchedAction int32 `json:"SchedAction,omitempty"`

	// schedcron
	SchedCron string `json:"SchedCron,omitempty"`

	// schedrange
	SchedRange []string `json:"SchedRange,omitempty"`
}

// Validate validates this Accountcommon permission
func (m *AccountcommonPermission) Validate(formats strfmt.Registry) error {
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

func (m *AccountcommonPermission) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("Action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonPermission) validateResource(formats strfmt.Registry) error {

	if err := validate.Required("Resource", "body", m.Resource); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonPermission) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonPermission) UnmarshalBinary(b []byte) error {
	var res AccountcommonPermission
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
