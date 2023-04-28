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

// ModelsKickGroupMemberResponseV1 Models kick group member response V1
//
// swagger:model Models kick group member response V1.
type ModelsKickGroupMemberResponseV1 struct {

	// groupid
	// Required: true
	GroupID *string `json:"groupId"`

	// kickeduserid
	// Required: true
	KickedUserID *string `json:"kickedUserId"`
}

// Validate validates this Models kick group member response V1
func (m *ModelsKickGroupMemberResponseV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGroupID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateKickedUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsKickGroupMemberResponseV1) validateGroupID(formats strfmt.Registry) error {

	if err := validate.Required("groupId", "body", m.GroupID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsKickGroupMemberResponseV1) validateKickedUserID(formats strfmt.Registry) error {

	if err := validate.Required("kickedUserId", "body", m.KickedUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsKickGroupMemberResponseV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsKickGroupMemberResponseV1) UnmarshalBinary(b []byte) error {
	var res ModelsKickGroupMemberResponseV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
