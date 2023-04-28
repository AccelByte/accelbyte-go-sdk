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

// AccountcommonUserLinkedPlatform Accountcommon user linked platform
//
// swagger:model Accountcommon user linked platform.
type AccountcommonUserLinkedPlatform struct {

	// displayname
	DisplayName string `json:"DisplayName,omitempty"`

	// emailaddress
	EmailAddress string `json:"EmailAddress,omitempty"`

	// linkedat
	// Required: true
	LinkedAt *string `json:"LinkedAt"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// originnamespace
	// Required: true
	OriginNamespace *string `json:"OriginNamespace"`

	// platformid
	PlatformID string `json:"PlatformId,omitempty"`

	// platformuserid
	PlatformUserID string `json:"PlatformUserId,omitempty"`

	// userid
	// Required: true
	UserID *string `json:"UserId"`

	// xuid
	XUID string `json:"XUID,omitempty"`
}

// Validate validates this Accountcommon user linked platform
func (m *AccountcommonUserLinkedPlatform) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLinkedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOriginNamespace(formats); err != nil {
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

func (m *AccountcommonUserLinkedPlatform) validateLinkedAt(formats strfmt.Registry) error {

	if err := validate.Required("LinkedAt", "body", m.LinkedAt); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserLinkedPlatform) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserLinkedPlatform) validateOriginNamespace(formats strfmt.Registry) error {

	if err := validate.Required("OriginNamespace", "body", m.OriginNamespace); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserLinkedPlatform) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonUserLinkedPlatform) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonUserLinkedPlatform) UnmarshalBinary(b []byte) error {
	var res AccountcommonUserLinkedPlatform
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
