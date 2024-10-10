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

// AccountCreateTestUsersRequestV4 Account create test users request V4
//
// swagger:model Account create test users request V4.
type AccountCreateTestUsersRequestV4 struct {

	// count
	// Required: true
	// Format: int32
	Count *int32 `json:"count"`

	// userinfo
	// Required: true
	UserInfo *AccountUserInfo `json:"userInfo"`
}

// Validate validates this Account create test users request V4
func (m *AccountCreateTestUsersRequestV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserInfo(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountCreateTestUsersRequestV4) validateCount(formats strfmt.Registry) error {

	if err := validate.Required("count", "body", m.Count); err != nil {
		return err
	}

	return nil
}

func (m *AccountCreateTestUsersRequestV4) validateUserInfo(formats strfmt.Registry) error {

	if err := validate.Required("userInfo", "body", m.UserInfo); err != nil {
		return err
	}

	if m.UserInfo != nil {
		if err := m.UserInfo.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("userInfo")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountCreateTestUsersRequestV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountCreateTestUsersRequestV4) UnmarshalBinary(b []byte) error {
	var res AccountCreateTestUsersRequestV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
