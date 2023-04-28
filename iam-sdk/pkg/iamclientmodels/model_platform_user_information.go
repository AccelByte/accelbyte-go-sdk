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

// ModelPlatformUserInformation Model platform user information
//
// swagger:model Model platform user information.
type ModelPlatformUserInformation struct {

	// displayname
	// Required: true
	DisplayName *string `json:"DisplayName"`

	// emailaddress
	EmailAddress string `json:"EmailAddress,omitempty"`

	// linkedat
	// Required: true
	// Format: date-time
	LinkedAt strfmt.DateTime `json:"LinkedAt"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// platformid
	// Required: true
	PlatformID *string `json:"PlatformID"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"PlatformUserID"`

	// xuid
	XUID string `json:"XUID,omitempty"`
}

// Validate validates this Model platform user information
func (m *ModelPlatformUserInformation) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
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

func (m *ModelPlatformUserInformation) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("DisplayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelPlatformUserInformation) validateLinkedAt(formats strfmt.Registry) error {

	if err := validate.Required("LinkedAt", "body", strfmt.DateTime(m.LinkedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("LinkedAt", "body", "date-time", m.LinkedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelPlatformUserInformation) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelPlatformUserInformation) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("PlatformID", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ModelPlatformUserInformation) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("PlatformUserID", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPlatformUserInformation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPlatformUserInformation) UnmarshalBinary(b []byte) error {
	var res ModelPlatformUserInformation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
