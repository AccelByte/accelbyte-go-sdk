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

// AccountcommonUserLinkedPlatformV3 Accountcommon user linked platform V3
//
// swagger:model Accountcommon user linked platform V3.
type AccountcommonUserLinkedPlatformV3 struct {

	// accountgroup
	// Required: true
	AccountGroup *string `json:"accountGroup"`

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// emailaddress
	EmailAddress string `json:"emailAddress,omitempty"`

	// linkedat
	// Required: true
	LinkedAt *string `json:"linkedAt"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// originnamespace
	// Required: true
	OriginNamespace *string `json:"originNamespace"`

	// platformid
	PlatformID string `json:"platformId,omitempty"`

	// platformuserid
	PlatformUserID string `json:"platformUserId,omitempty"`

	// userid
	// Required: true
	UserID *string `json:"userId"`

	// xuid
	Xuid string `json:"xuid,omitempty"`
}

// Validate validates this Accountcommon user linked platform V3
func (m *AccountcommonUserLinkedPlatformV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAccountGroup(formats); err != nil {
		res = append(res, err)
	}
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

func (m *AccountcommonUserLinkedPlatformV3) validateAccountGroup(formats strfmt.Registry) error {

	if err := validate.Required("accountGroup", "body", m.AccountGroup); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserLinkedPlatformV3) validateLinkedAt(formats strfmt.Registry) error {

	if err := validate.Required("linkedAt", "body", m.LinkedAt); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserLinkedPlatformV3) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserLinkedPlatformV3) validateOriginNamespace(formats strfmt.Registry) error {

	if err := validate.Required("originNamespace", "body", m.OriginNamespace); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserLinkedPlatformV3) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonUserLinkedPlatformV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonUserLinkedPlatformV3) UnmarshalBinary(b []byte) error {
	var res AccountcommonUserLinkedPlatformV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
