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

// ModelUserInformation Model user information
//
// swagger:model Model user information.
type ModelUserInformation struct {

	// country
	// Required: true
	Country *string `json:"Country"`

	// displayname
	// Required: true
	DisplayName *string `json:"DisplayName"`

	// emailaddresses
	// Required: true
	EmailAddresses []string `json:"EmailAddresses"`

	// linkedplatformaccounts
	// Required: true
	LinkedPlatformAccounts []*ModelPlatformUserInformation `json:"LinkedPlatformAccounts"`

	// phonenumber
	// Required: true
	PhoneNumber *string `json:"PhoneNumber"`

	// username
	// Required: true
	Username *string `json:"Username"`

	// xuid
	XUID string `json:"XUID,omitempty"`
}

// Validate validates this Model user information
func (m *ModelUserInformation) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCountry(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEmailAddresses(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLinkedPlatformAccounts(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePhoneNumber(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUsername(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserInformation) validateCountry(formats strfmt.Registry) error {

	if err := validate.Required("Country", "body", m.Country); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserInformation) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("DisplayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserInformation) validateEmailAddresses(formats strfmt.Registry) error {

	if err := validate.Required("EmailAddresses", "body", m.EmailAddresses); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserInformation) validateLinkedPlatformAccounts(formats strfmt.Registry) error {

	if err := validate.Required("LinkedPlatformAccounts", "body", m.LinkedPlatformAccounts); err != nil {
		return err
	}

	for i := 0; i < len(m.LinkedPlatformAccounts); i++ {
		if swag.IsZero(m.LinkedPlatformAccounts[i]) { // not required
			continue
		}

		if m.LinkedPlatformAccounts[i] != nil {
			if err := m.LinkedPlatformAccounts[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("LinkedPlatformAccounts" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelUserInformation) validatePhoneNumber(formats strfmt.Registry) error {

	if err := validate.Required("PhoneNumber", "body", m.PhoneNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserInformation) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("Username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserInformation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserInformation) UnmarshalBinary(b []byte) error {
	var res ModelUserInformation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
