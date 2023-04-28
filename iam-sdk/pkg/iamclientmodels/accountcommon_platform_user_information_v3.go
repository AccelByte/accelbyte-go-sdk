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

// AccountcommonPlatformUserInformationV3 Accountcommon platform user information V3
//
// swagger:model Accountcommon platform user information V3.
type AccountcommonPlatformUserInformationV3 struct {

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// emailaddress
	EmailAddress string `json:"emailAddress,omitempty"`

	// linkedat
	// Required: true
	// Format: date-time
	LinkedAt strfmt.DateTime `json:"linkedAt"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// platformid
	// Required: true
	PlatformID *string `json:"platformId"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserId"`

	// xboxuserid
	XboxUserID string `json:"xboxUserId,omitempty"`
}

// Validate validates this Accountcommon platform user information V3
func (m *AccountcommonPlatformUserInformationV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLinkedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *AccountcommonPlatformUserInformationV3) validateLinkedAt(formats strfmt.Registry) error {

	if err := validate.Required("linkedAt", "body", strfmt.DateTime(m.LinkedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("linkedAt", "body", "date-time", m.LinkedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonPlatformUserInformationV3) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonPlatformUserInformationV3) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonPlatformUserInformationV3) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserId", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonPlatformUserInformationV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonPlatformUserInformationV3) UnmarshalBinary(b []byte) error {
	var res AccountcommonPlatformUserInformationV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
