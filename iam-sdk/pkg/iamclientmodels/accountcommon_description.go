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

// AccountcommonDescription Accountcommon description
//
// swagger:model Accountcommon description.
type AccountcommonDescription struct {

	// en-us
	// Required: true
	EnUS *string `json:"en-US"`

	// zh-cn
	// Required: true
	ZhCN *string `json:"zh-CN"`
}

// Validate validates this Accountcommon description
func (m *AccountcommonDescription) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnUS(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateZhCN(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonDescription) validateEnUS(formats strfmt.Registry) error {

	if err := validate.Required("en-US", "body", m.EnUS); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonDescription) validateZhCN(formats strfmt.Registry) error {

	if err := validate.Required("zh-CN", "body", m.ZhCN); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonDescription) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonDescription) UnmarshalBinary(b []byte) error {
	var res AccountcommonDescription
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
