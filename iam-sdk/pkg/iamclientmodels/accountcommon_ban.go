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

// AccountcommonBan Accountcommon ban
//
// swagger:model Accountcommon ban.
type AccountcommonBan struct {

	// ban
	// Required: true
	Ban *string `json:"Ban"`

	// description
	// Required: true
	Description *string `json:"Description"`
}

// Validate validates this Accountcommon ban
func (m *AccountcommonBan) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBan(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonBan) validateBan(formats strfmt.Registry) error {

	if err := validate.Required("Ban", "body", m.Ban); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonBan) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("Description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonBan) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonBan) UnmarshalBinary(b []byte) error {
	var res AccountcommonBan
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
