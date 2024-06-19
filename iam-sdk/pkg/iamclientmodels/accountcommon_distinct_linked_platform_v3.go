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

// AccountcommonDistinctLinkedPlatformV3 Accountcommon distinct linked platform V3
//
// swagger:model Accountcommon distinct linked platform V3.
type AccountcommonDistinctLinkedPlatformV3 struct {

	// details
	// Required: true
	Details []*AccountcommonSimpleUserPlatformInfoV3 `json:"details"`

	// linkedat
	// Required: true
	LinkedAt *string `json:"linkedAt"`

	// logourl
	LogoURL string `json:"logoURL,omitempty"`

	// platformgroup
	// Required: true
	PlatformGroup *string `json:"platformGroup"`

	// platformname
	// Required: true
	PlatformName *string `json:"platformName"`

	// platformuserid
	PlatformUserID string `json:"platformUserId,omitempty"`
}

// Validate validates this Accountcommon distinct linked platform V3
func (m *AccountcommonDistinctLinkedPlatformV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDetails(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLinkedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformGroup(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonDistinctLinkedPlatformV3) validateDetails(formats strfmt.Registry) error {

	if err := validate.Required("details", "body", m.Details); err != nil {
		return err
	}

	for i := 0; i < len(m.Details); i++ {
		if swag.IsZero(m.Details[i]) { // not required
			continue
		}

		if m.Details[i] != nil {
			if err := m.Details[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("details" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

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
