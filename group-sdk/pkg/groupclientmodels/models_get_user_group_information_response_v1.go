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

// ModelsGetUserGroupInformationResponseV1 Models get user group information response V1
//
// swagger:model Models get user group information response V1.
type ModelsGetUserGroupInformationResponseV1 struct {

	// groupid
	// Required: true
	GroupID *string `json:"groupId"`

	// joinedat
	// Required: true
	// Format: date-time
	JoinedAt strfmt.DateTime `json:"joinedAt"`

	// memberroleid
	// Required: true
	MemberRoleID []string `json:"memberRoleId"`

	// status
	Status string `json:"status,omitempty"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models get user group information response V1
func (m *ModelsGetUserGroupInformationResponseV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGroupID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJoinedAt(formats); err != nil {
		res = append(res, err)
	}
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

func (m *ModelsGetUserGroupInformationResponseV1) validateGroupID(formats strfmt.Registry) error {

	if err := validate.Required("groupId", "body", m.GroupID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetUserGroupInformationResponseV1) validateJoinedAt(formats strfmt.Registry) error {

	if err := validate.Required("joinedAt", "body", strfmt.DateTime(m.JoinedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("joinedAt", "body", "date-time", m.JoinedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetUserGroupInformationResponseV1) validateMemberRoleID(formats strfmt.Registry) error {

	if err := validate.Required("memberRoleId", "body", m.MemberRoleID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetUserGroupInformationResponseV1) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetUserGroupInformationResponseV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetUserGroupInformationResponseV1) UnmarshalBinary(b []byte) error {
	var res ModelsGetUserGroupInformationResponseV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
