// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelUserRequestFriendRequest Model user request friend request
//
// swagger:model Model user request friend request.
type ModelUserRequestFriendRequest struct {

	// friendid
	FriendID string `json:"friendId,omitempty"`

	// friendpublicid
	FriendPublicID string `json:"friendPublicId,omitempty"`

	// metadata
	Metadata map[string]string `json:"metadata,omitempty"`
}

// Validate validates this Model user request friend request
func (m *ModelUserRequestFriendRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
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
