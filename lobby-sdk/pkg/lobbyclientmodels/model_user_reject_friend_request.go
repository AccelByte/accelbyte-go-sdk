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

// ModelUserRejectFriendRequest Model user reject friend request
//
// swagger:model Model user reject friend request.
type ModelUserRejectFriendRequest struct {

	// friendid
	// Required: true
	FriendID *string `json:"friendId"`
}

// Validate validates this Model user reject friend request
func (m *ModelUserRejectFriendRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFriendID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserRejectFriendRequest) validateFriendID(formats strfmt.Registry) error {

	if err := validate.Required("friendId", "body", m.FriendID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserRejectFriendRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserRejectFriendRequest) UnmarshalBinary(b []byte) error {
	var res ModelUserRejectFriendRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
