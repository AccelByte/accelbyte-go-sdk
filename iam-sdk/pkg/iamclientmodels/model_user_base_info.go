// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserBaseInfo Model user base info
//
// swagger:model Model user base info.
type ModelUserBaseInfo struct {

	// avatarurl
	// Required: true
	AvatarURL *string `json:"avatarUrl"`

	// displayname
	// Required: true
	DisplayName *string `json:"displayName"`

	// platformuserids
	// Required: true
	PlatformUserIds map[string]string `json:"platformUserIds"`

	// userid
	// Required: true
	UserID *string `json:"userId"`

	// username
	Username string `json:"username,omitempty"`
}

// Validate validates this Model user base info
func (m *ModelUserBaseInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAvatarURL(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
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

func (m *ModelUserBaseInfo) validateAvatarURL(formats strfmt.Registry) error {

	if err := validate.Required("avatarUrl", "body", m.AvatarURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBaseInfo) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBaseInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserBaseInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserBaseInfo) UnmarshalBinary(b []byte) error {
	var res ModelUserBaseInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
