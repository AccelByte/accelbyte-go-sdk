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

// ModelNativeFriendRequest Model native friend request
//
// swagger:model Model native friend request.
type ModelNativeFriendRequest struct {

	// islogin
	// Required: true
	IsLogin *bool `json:"isLogin"`

	// platformid
	// Required: true
	PlatformID *string `json:"platformId"`

	// platformtoken
	PlatformToken string `json:"platformToken,omitempty"`

	// psnenv
	PsnEnv string `json:"psnEnv,omitempty"`

	// syncdeletedfriend
	SyncDeletedFriend bool `json:"syncDeletedFriend"`
}

// Validate validates this Model native friend request
func (m *ModelNativeFriendRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsLogin(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelNativeFriendRequest) validateIsLogin(formats strfmt.Registry) error {

	if err := validate.Required("isLogin", "body", m.IsLogin); err != nil {
		return err
	}

	return nil
}

func (m *ModelNativeFriendRequest) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelNativeFriendRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelNativeFriendRequest) UnmarshalBinary(b []byte) error {
	var res ModelNativeFriendRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
