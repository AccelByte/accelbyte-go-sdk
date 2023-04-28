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

// AccountcommonDistinctPlatformResponseV3 Accountcommon distinct platform response V3
//
// swagger:model Accountcommon distinct platform response V3.
type AccountcommonDistinctPlatformResponseV3 struct {

	// platforms
	// Required: true
	Platforms []*AccountcommonDistinctLinkedPlatformV3 `json:"platforms"`
}

// Validate validates this Accountcommon distinct platform response V3
func (m *AccountcommonDistinctPlatformResponseV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatforms(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonDistinctPlatformResponseV3) validatePlatforms(formats strfmt.Registry) error {

	if err := validate.Required("platforms", "body", m.Platforms); err != nil {
		return err
	}

	for i := 0; i < len(m.Platforms); i++ {
		if swag.IsZero(m.Platforms[i]) { // not required
			continue
		}

		if m.Platforms[i] != nil {
			if err := m.Platforms[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("platforms" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonDistinctPlatformResponseV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonDistinctPlatformResponseV3) UnmarshalBinary(b []byte) error {
	var res AccountcommonDistinctPlatformResponseV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
