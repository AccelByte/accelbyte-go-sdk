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

// ModelsRemoveRoleFromMemberRequestV1 Models remove role from member request V1
//
// swagger:model Models remove role from member request V1.
type ModelsRemoveRoleFromMemberRequestV1 struct {

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models remove role from member request V1
func (m *ModelsRemoveRoleFromMemberRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsRemoveRoleFromMemberRequestV1) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRemoveRoleFromMemberRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRemoveRoleFromMemberRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelsRemoveRoleFromMemberRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
