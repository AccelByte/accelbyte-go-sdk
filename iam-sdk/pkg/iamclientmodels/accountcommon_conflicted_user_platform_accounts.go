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

// AccountcommonConflictedUserPlatformAccounts Accountcommon conflicted user platform accounts
//
// swagger:model Accountcommon conflicted user platform accounts.
type AccountcommonConflictedUserPlatformAccounts struct {

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserID"`

	// publisheraccounts
	// Required: true
	PublisherAccounts []*AccountcommonUserWithLinkedPlatformAccounts `json:"publisherAccounts"`
}

// Validate validates this Accountcommon conflicted user platform accounts
func (m *AccountcommonConflictedUserPlatformAccounts) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePublisherAccounts(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonConflictedUserPlatformAccounts) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserID", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonConflictedUserPlatformAccounts) validatePublisherAccounts(formats strfmt.Registry) error {

	if err := validate.Required("publisherAccounts", "body", m.PublisherAccounts); err != nil {
		return err
	}

	for i := 0; i < len(m.PublisherAccounts); i++ {
		if swag.IsZero(m.PublisherAccounts[i]) { // not required
			continue
		}

		if m.PublisherAccounts[i] != nil {
			if err := m.PublisherAccounts[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("publisherAccounts" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonConflictedUserPlatformAccounts) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonConflictedUserPlatformAccounts) UnmarshalBinary(b []byte) error {
	var res AccountcommonConflictedUserPlatformAccounts
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
