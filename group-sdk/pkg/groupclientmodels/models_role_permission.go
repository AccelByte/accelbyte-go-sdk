// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsRolePermission Models role permission
//
// swagger:model Models role permission.
type ModelsRolePermission struct {

	// action
	// Required: true
	// Format: int32
	Action *int32 `json:"action"`

	// resourcename
	// Required: true
	ResourceName *string `json:"resourceName"`
}

// Validate validates this Models role permission
func (m *ModelsRolePermission) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResourceName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsRolePermission) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRolePermission) validateResourceName(formats strfmt.Registry) error {

	if err := validate.Required("resourceName", "body", m.ResourceName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRolePermission) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRolePermission) UnmarshalBinary(b []byte) error {
	var res ModelsRolePermission
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
