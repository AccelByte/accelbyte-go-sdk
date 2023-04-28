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

// ModelsGroupMember Models group member
//
// swagger:model Models group member.
type ModelsGroupMember struct {

	// memberroleid
	// Required: true
	MemberRoleID []string `json:"memberRoleId"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models group member
func (m *ModelsGroupMember) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMemberRoleID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGroupMember) validateMemberRoleID(formats strfmt.Registry) error {

	if err := validate.Required("memberRoleId", "body", m.MemberRoleID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGroupMember) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGroupMember) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGroupMember) UnmarshalBinary(b []byte) error {
	var res ModelsGroupMember
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
