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

// AccountcommonUserSearchResult Accountcommon user search result
//
// swagger:model Accountcommon user search result.
type AccountcommonUserSearchResult struct {

	// displayname
	// Required: true
	DisplayName *string `json:"DisplayName"`

	// emailaddress
	// Required: true
	EmailAddress *string `json:"EmailAddress"`

	// linkedplatforms
	// Required: true
	LinkedPlatforms []*AccountcommonUserLinkedPlatform `json:"LinkedPlatforms"`

	// phonenumber
	// Required: true
	PhoneNumber *string `json:"PhoneNumber"`

	// userid
	// Required: true
	UserID *string `json:"UserId"`
}

// Validate validates this Accountcommon user search result
func (m *AccountcommonUserSearchResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEmailAddress(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLinkedPlatforms(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePhoneNumber(formats); err != nil {
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

func (m *AccountcommonUserSearchResult) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("DisplayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserSearchResult) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("EmailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserSearchResult) validateLinkedPlatforms(formats strfmt.Registry) error {

	if err := validate.Required("LinkedPlatforms", "body", m.LinkedPlatforms); err != nil {
		return err
	}

	for i := 0; i < len(m.LinkedPlatforms); i++ {
		if swag.IsZero(m.LinkedPlatforms[i]) { // not required
			continue
		}

		if m.LinkedPlatforms[i] != nil {
			if err := m.LinkedPlatforms[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("LinkedPlatforms" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *AccountcommonUserSearchResult) validatePhoneNumber(formats strfmt.Registry) error {

	if err := validate.Required("PhoneNumber", "body", m.PhoneNumber); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserSearchResult) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonUserSearchResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonUserSearchResult) UnmarshalBinary(b []byte) error {
	var res AccountcommonUserSearchResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
