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

// ModelsAssignRoleToMemberRequestV1 Models assign role to member request V1
//
// swagger:model Models assign role to member request V1.
type ModelsAssignRoleToMemberRequestV1 struct {

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models assign role to member request V1
func (m *ModelsAssignRoleToMemberRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAssignRoleToMemberRequestV1) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAssignRoleToMemberRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAssignRoleToMemberRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelsAssignRoleToMemberRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
