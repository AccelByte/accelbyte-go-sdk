// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsTopicMemberResponse Models topic member response
//
// swagger:model Models topic member response.
type ModelsTopicMemberResponse struct {

	// isadmin
	// Required: true
	IsAdmin *bool `json:"isAdmin"`

	// isbanned
	// Required: true
	IsBanned *bool `json:"isBanned"`

	// shardid
	// Required: true
	ShardID *string `json:"shardId"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models topic member response
func (m *ModelsTopicMemberResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsAdmin(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsBanned(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateShardID(formats); err != nil {
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

func (m *ModelsTopicMemberResponse) validateIsAdmin(formats strfmt.Registry) error {

	if err := validate.Required("isAdmin", "body", m.IsAdmin); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTopicMemberResponse) validateIsBanned(formats strfmt.Registry) error {

	if err := validate.Required("isBanned", "body", m.IsBanned); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTopicMemberResponse) validateShardID(formats strfmt.Registry) error {

	if err := validate.Required("shardId", "body", m.ShardID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTopicMemberResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsTopicMemberResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsTopicMemberResponse) UnmarshalBinary(b []byte) error {
	var res ModelsTopicMemberResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
