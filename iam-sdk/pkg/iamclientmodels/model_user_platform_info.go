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

// ModelUserPlatformInfo Model user platform info
//
// swagger:model Model user platform info.
type ModelUserPlatformInfo struct {

	// platformavatarurl
	PlatformAvatarURL string `json:"platformAvatarUrl,omitempty"`

	// platformdisplayname
	PlatformDisplayName string `json:"platformDisplayName,omitempty"`

	// platformgroup
	PlatformGroup string `json:"platformGroup,omitempty"`

	// platformid
	// Required: true
	PlatformID *string `json:"platformId"`

	// platformuserid
	PlatformUserID string `json:"platformUserId,omitempty"`
}

// Validate validates this Model user platform info
func (m *ModelUserPlatformInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserPlatformInfo) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformId", "body", m.PlatformID); err != nil {
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
