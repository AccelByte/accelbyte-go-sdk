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

// AccountcommonUserPlatforms Accountcommon user platforms
//
// swagger:model Accountcommon user platforms.
type AccountcommonUserPlatforms struct {

	// useridplatforms
	// Required: true
	UserIDPlatforms []*AccountcommonUserPlatformInfo `json:"userIdPlatforms"`
}

// Validate validates this Accountcommon user platforms
func (m *AccountcommonUserPlatforms) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserIDPlatforms(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonUserPlatforms) validateUserIDPlatforms(formats strfmt.Registry) error {

	if err := validate.Required("userIdPlatforms", "body", m.UserIDPlatforms); err != nil {
		return err
	}

	for i := 0; i < len(m.UserIDPlatforms); i++ {
		if swag.IsZero(m.UserIDPlatforms[i]) { // not required
			continue
		}

		if m.UserIDPlatforms[i] != nil {
			if err := m.UserIDPlatforms[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("userIdPlatforms" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonUserPlatforms) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonUserPlatforms) UnmarshalBinary(b []byte) error {
	var res AccountcommonUserPlatforms
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
