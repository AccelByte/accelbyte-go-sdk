// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserRequestFriendRequest Model user request friend request
//
// swagger:model Model user request friend request.
type ModelUserRequestFriendRequest struct {

	// friendid
	// Required: true
	FriendID *string `json:"friendId"`

	// friendpublicid
	// Required: true
	FriendPublicID *string `json:"friendPublicId"`
}

// Validate validates this Model user request friend request
func (m *ModelUserRequestFriendRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFriendID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFriendPublicID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserRequestFriendRequest) validateFriendID(formats strfmt.Registry) error {

	if err := validate.Required("friendId", "body", m.FriendID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserRequestFriendRequest) validateFriendPublicID(formats strfmt.Registry) error {

	if err := validate.Required("friendPublicId", "body", m.FriendPublicID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserRequestFriendRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserRequestFriendRequest) UnmarshalBinary(b []byte) error {
	var res ModelUserRequestFriendRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
