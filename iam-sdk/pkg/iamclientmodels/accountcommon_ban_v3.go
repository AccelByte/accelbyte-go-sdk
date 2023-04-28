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

// AccountcommonBanV3 Accountcommon ban V3
//
// swagger:model Accountcommon ban V3.
type AccountcommonBanV3 struct {

	// ban
	// Required: true
	Ban *string `json:"ban"`

	// description
	Description string `json:"description,omitempty"`

	// descriptions
	Descriptions *AccountcommonDescription `json:"descriptions,omitempty"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Accountcommon ban V3
func (m *AccountcommonBanV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBan(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonBanV3) validateBan(formats strfmt.Registry) error {

	if err := validate.Required("ban", "body", m.Ban); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonBanV3) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonBanV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonBanV3) UnmarshalBinary(b []byte) error {
	var res AccountcommonBanV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
