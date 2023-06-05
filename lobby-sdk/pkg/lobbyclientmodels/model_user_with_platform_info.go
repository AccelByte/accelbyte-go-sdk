// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserWithPlatformInfo Model user with platform info
//
// swagger:model Model user with platform info.
type ModelUserWithPlatformInfo struct {

	// avatarurl
	// Required: true
	AvatarURL *string `json:"avatarUrl"`

	// displayname
	// Required: true
	DisplayName *string `json:"displayName"`

	// platforminfos
	// Required: true
	PlatformInfos []*ModelUserPlatformInfo `json:"platformInfos"`

	// userid
	// Required: true
	UserID *string `json:"userId"`

	// username
	Username string `json:"username,omitempty"`
}

// Validate validates this Model user with platform info
func (m *ModelUserWithPlatformInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAvatarURL(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformInfos(formats); err != nil {
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

func (m *ModelUserWithPlatformInfo) validateAvatarURL(formats strfmt.Registry) error {

	if err := validate.Required("avatarUrl", "body", m.AvatarURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserWithPlatformInfo) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserWithPlatformInfo) validatePlatformInfos(formats strfmt.Registry) error {

	if err := validate.Required("platformInfos", "body", m.PlatformInfos); err != nil {
		return err
	}

	for i := 0; i < len(m.PlatformInfos); i++ {
		if swag.IsZero(m.PlatformInfos[i]) { // not required
			continue
		}

		if m.PlatformInfos[i] != nil {
			if err := m.PlatformInfos[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("platformInfos" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelUserWithPlatformInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserWithPlatformInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserWithPlatformInfo) UnmarshalBinary(b []byte) error {
	var res ModelUserWithPlatformInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
