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

// AccountcommonPlatformLinkingHistory Accountcommon platform linking history
//
// swagger:model Accountcommon platform linking history.
type AccountcommonPlatformLinkingHistory struct {

	// platformdisplayname
	// Required: true
	PlatformDisplayName *string `json:"platformDisplayName"`

	// platformid
	// Required: true
	PlatformID *string `json:"platformID"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserID"`
}

// Validate validates this Accountcommon platform linking history
func (m *AccountcommonPlatformLinkingHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformID(formats); err != nil {
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

func (m *AccountcommonPlatformLinkingHistory) validatePlatformDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("platformDisplayName", "body", m.PlatformDisplayName); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonPlatformLinkingHistory) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformID", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonPlatformLinkingHistory) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserID", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonPlatformLinkingHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonPlatformLinkingHistory) UnmarshalBinary(b []byte) error {
	var res AccountcommonPlatformLinkingHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
