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

// AccountcommonPermissionV3 Accountcommon permission V3
//
// swagger:model Accountcommon permission V3.
type AccountcommonPermissionV3 struct {

	// action
	// Required: true
	// Format: int32
	Action *int32 `json:"action"`

	// resource
	// Required: true
	Resource *string `json:"resource"`

	// schedaction
	// Format: int32
	SchedAction int32 `json:"schedAction,omitempty"`

	// schedcron
	SchedCron string `json:"schedCron,omitempty"`

	// schedrange
	SchedRange []string `json:"schedRange,omitempty"`
}

// Validate validates this Accountcommon permission V3
func (m *AccountcommonPermissionV3) Validate(formats strfmt.Registry) error {
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

func (m *AccountcommonPermissionV3) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonPermissionV3) validateResource(formats strfmt.Registry) error {

	if err := validate.Required("resource", "body", m.Resource); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonPermissionV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonPermissionV3) UnmarshalBinary(b []byte) error {
	var res AccountcommonPermissionV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
