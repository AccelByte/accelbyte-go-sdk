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

// ModelRoleAdminStatusResponseV3 Model role admin status response V3
//
// swagger:model Model role admin status response V3.
type ModelRoleAdminStatusResponseV3 struct {

	// adminrole
	// Required: true
	AdminRole *bool `json:"adminRole"`
}

// Validate validates this Model role admin status response V3
func (m *ModelRoleAdminStatusResponseV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAdminRole(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelRoleAdminStatusResponseV3) validateAdminRole(formats strfmt.Registry) error {

	if err := validate.Required("adminRole", "body", m.AdminRole); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRoleAdminStatusResponseV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRoleAdminStatusResponseV3) UnmarshalBinary(b []byte) error {
	var res ModelRoleAdminStatusResponseV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
