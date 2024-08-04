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

// AccountcommonDistinctLinkedPlatformV3 Accountcommon distinct linked platform V3
//
// swagger:model Accountcommon distinct linked platform V3.
type AccountcommonDistinctLinkedPlatformV3 struct {

	// details
	Details []*AccountcommonSimpleUserPlatformInfoV3 `json:"details,omitempty"`

	// linkedat
	// Required: true
	LinkedAt *string `json:"linkedAt"`

	// logourl
	LogoURL string `json:"logoURL,omitempty"`

	// platformdisplayname
	PlatformDisplayName string `json:"platformDisplayName,omitempty"`

	// platformgroup
	// Required: true
	PlatformGroup *string `json:"platformGroup"`

	// platformname
	// Required: true
	PlatformName *string `json:"platformName"`

	// platformuserid
	PlatformUserID string `json:"platformUserId,omitempty"`

	// status
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Accountcommon distinct linked platform V3
func (m *AccountcommonDistinctLinkedPlatformV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLinkedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformGroup(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonDistinctLinkedPlatformV3) validateLinkedAt(formats strfmt.Registry) error {

	if err := validate.Required("linkedAt", "body", m.LinkedAt); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonDistinctLinkedPlatformV3) validatePlatformGroup(formats strfmt.Registry) error {

	if err := validate.Required("platformGroup", "body", m.PlatformGroup); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonDistinctLinkedPlatformV3) validatePlatformName(formats strfmt.Registry) error {

	if err := validate.Required("platformName", "body", m.PlatformName); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonDistinctLinkedPlatformV3) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonDistinctLinkedPlatformV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonDistinctLinkedPlatformV3) UnmarshalBinary(b []byte) error {
	var res AccountcommonDistinctLinkedPlatformV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
