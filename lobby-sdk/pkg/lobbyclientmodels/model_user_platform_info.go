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

// ModelUserPlatformInfo Model user platform info
//
// swagger:model Model user platform info.
type ModelUserPlatformInfo struct {

	// platformdisplayname
	// Required: true
	PlatformDisplayName *string `json:"platformDisplayName"`

	// platformname
	// Required: true
	PlatformName *string `json:"platformName"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserId"`
}

// Validate validates this Model user platform info
func (m *ModelUserPlatformInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserPlatformInfo) validatePlatformDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("platformDisplayName", "body", m.PlatformDisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformInfo) validatePlatformName(formats strfmt.Registry) error {

	if err := validate.Required("platformName", "body", m.PlatformName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformInfo) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserId", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserPlatformInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserPlatformInfo) UnmarshalBinary(b []byte) error {
	var res ModelUserPlatformInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
