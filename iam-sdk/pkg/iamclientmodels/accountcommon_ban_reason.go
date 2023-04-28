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

// AccountcommonBanReason Accountcommon ban reason
//
// swagger:model Accountcommon ban reason.
type AccountcommonBanReason struct {

	// description
	// Required: true
	Description *string `json:"Description"`

	// reason
	// Required: true
	Reason *string `json:"Reason"`
}

// Validate validates this Accountcommon ban reason
func (m *AccountcommonBanReason) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonBanReason) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("Description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonBanReason) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("Reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonBanReason) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonBanReason) UnmarshalBinary(b []byte) error {
	var res AccountcommonBanReason
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
