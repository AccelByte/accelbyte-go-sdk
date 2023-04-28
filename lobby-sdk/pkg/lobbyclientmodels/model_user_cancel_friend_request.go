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

// ModelUserCancelFriendRequest Model user cancel friend request
//
// swagger:model Model user cancel friend request.
type ModelUserCancelFriendRequest struct {

	// friendid
	// Required: true
	FriendID *string `json:"friendId"`
}

// Validate validates this Model user cancel friend request
func (m *ModelUserCancelFriendRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFriendID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserCancelFriendRequest) validateFriendID(formats strfmt.Registry) error {

	if err := validate.Required("friendId", "body", m.FriendID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserCancelFriendRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserCancelFriendRequest) UnmarshalBinary(b []byte) error {
	var res ModelUserCancelFriendRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
