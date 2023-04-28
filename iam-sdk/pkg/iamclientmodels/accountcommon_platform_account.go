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

// AccountcommonPlatformAccount Accountcommon platform account
//
// swagger:model Accountcommon platform account.
type AccountcommonPlatformAccount struct {

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// platformid
	PlatformID string `json:"platformId,omitempty"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserId"`
}

// Validate validates this Accountcommon platform account
func (m *AccountcommonPlatformAccount) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
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

func (m *AccountcommonPlatformAccount) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonPlatformAccount) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserId", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonPlatformAccount) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonPlatformAccount) UnmarshalBinary(b []byte) error {
	var res AccountcommonPlatformAccount
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
