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

// AccountcommonUserPlatformInfo Accountcommon user platform info
//
// swagger:model Accountcommon user platform info.
type AccountcommonUserPlatformInfo struct {

	// platformid
	// Required: true
	PlatformID *string `json:"platformId"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserId"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Accountcommon user platform info
func (m *AccountcommonUserPlatformInfo) Validate(formats strfmt.Registry) error {
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

func (m *AccountcommonUserPlatformInfo) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserPlatformInfo) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserId", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserPlatformInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonUserPlatformInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonUserPlatformInfo) UnmarshalBinary(b []byte) error {
	var res AccountcommonUserPlatformInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
