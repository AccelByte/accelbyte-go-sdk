// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AccountcommonUserWithPlatformAccounts Accountcommon user with platform accounts
//
// swagger:model Accountcommon user with platform accounts.
type AccountcommonUserWithPlatformAccounts struct {

	// linkedplatforms
	// Required: true
	LinkedPlatforms []*AccountcommonPlatformAccount `json:"linkedPlatforms"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Accountcommon user with platform accounts
func (m *AccountcommonUserWithPlatformAccounts) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLinkedPlatforms(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *AccountcommonUserWithPlatformAccounts) validateLinkedPlatforms(formats strfmt.Registry) error {

	if err := validate.Required("linkedPlatforms", "body", m.LinkedPlatforms); err != nil {
		return err
	}

	for i := 0; i < len(m.LinkedPlatforms); i++ {
		if swag.IsZero(m.LinkedPlatforms[i]) { // not required
			continue
		}

		if m.LinkedPlatforms[i] != nil {
			if err := m.LinkedPlatforms[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("linkedPlatforms" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *AccountcommonUserWithPlatformAccounts) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserWithPlatformAccounts) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonUserWithPlatformAccounts) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonUserWithPlatformAccounts) UnmarshalBinary(b []byte) error {
	var res AccountcommonUserWithPlatformAccounts
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
