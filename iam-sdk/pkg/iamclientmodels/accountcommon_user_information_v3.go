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

// AccountcommonUserInformationV3 Accountcommon user information V3
//
// swagger:model Accountcommon user information V3.
type AccountcommonUserInformationV3 struct {

	// country
	Country string `json:"country,omitempty"`

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// emailaddresses
	// Required: true
	EmailAddresses []string `json:"emailAddresses"`

	// phonenumber
	PhoneNumber string `json:"phoneNumber,omitempty"`

	// platformusers
	// Required: true
	PlatformUsers []*AccountcommonPlatformUserInformationV3 `json:"platformUsers"`

	// uniquedisplayname
	UniqueDisplayName string `json:"uniqueDisplayName,omitempty"`

	// username
	Username string `json:"username,omitempty"`

	// xboxuserid
	XboxUserID string `json:"xboxUserId,omitempty"`
}

// Validate validates this Accountcommon user information V3
func (m *AccountcommonUserInformationV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEmailAddresses(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformUsers(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonUserInformationV3) validateEmailAddresses(formats strfmt.Registry) error {

	if err := validate.Required("emailAddresses", "body", m.EmailAddresses); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonUserInformationV3) validatePlatformUsers(formats strfmt.Registry) error {

	if err := validate.Required("platformUsers", "body", m.PlatformUsers); err != nil {
		return err
	}

	for i := 0; i < len(m.PlatformUsers); i++ {
		if swag.IsZero(m.PlatformUsers[i]) { // not required
			continue
		}

		if m.PlatformUsers[i] != nil {
			if err := m.PlatformUsers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("platformUsers" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonUserInformationV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonUserInformationV3) UnmarshalBinary(b []byte) error {
	var res AccountcommonUserInformationV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
