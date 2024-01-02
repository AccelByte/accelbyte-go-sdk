// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelNativeSessionMember Model native session member
//
// swagger:model Model native session member.
type ModelNativeSessionMember struct {

	// platformid
	// Required: true
	PlatformID *string `json:"platformID"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserID"`

	// userid
	// Required: true
	UserID *string `json:"userID"`
}

// Validate validates this Model native session member
func (m *ModelNativeSessionMember) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformUserID(formats); err != nil {
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

func (m *ModelNativeSessionMember) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformID", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ModelNativeSessionMember) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserID", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelNativeSessionMember) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelNativeSessionMember) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelNativeSessionMember) UnmarshalBinary(b []byte) error {
	var res ModelNativeSessionMember
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
