// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAdminUpdateProfanityList Models admin update profanity list
//
// swagger:model Models admin update profanity list.
type ModelsAdminUpdateProfanityList struct {

	// isenabled
	// Required: true
	IsEnabled *bool `json:"isEnabled"`

	// ismandatory
	// Required: true
	IsMandatory *bool `json:"isMandatory"`

	// newname
	// Required: true
	NewName *string `json:"newName"`
}

// Validate validates this Models admin update profanity list
func (m *ModelsAdminUpdateProfanityList) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsMandatory(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNewName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminUpdateProfanityList) validateIsEnabled(formats strfmt.Registry) error {

	if err := validate.Required("isEnabled", "body", m.IsEnabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminUpdateProfanityList) validateIsMandatory(formats strfmt.Registry) error {

	if err := validate.Required("isMandatory", "body", m.IsMandatory); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminUpdateProfanityList) validateNewName(formats strfmt.Registry) error {

	if err := validate.Required("newName", "body", m.NewName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminUpdateProfanityList) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminUpdateProfanityList) UnmarshalBinary(b []byte) error {
	var res ModelsAdminUpdateProfanityList
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
