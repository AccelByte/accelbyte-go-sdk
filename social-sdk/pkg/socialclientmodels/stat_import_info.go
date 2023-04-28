// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// StatImportInfo Stat import info
//
// swagger:model Stat import info.
type StatImportInfo struct {

	// failedconfigs
	// Required: true
	FailedConfigs []string `json:"failedConfigs"`

	// ignoredconfigs
	// Required: true
	IgnoredConfigs []string `json:"ignoredConfigs"`

	// newconfigs
	// Required: true
	NewConfigs []string `json:"newConfigs"`

	// replacedconfigs
	// Required: true
	ReplacedConfigs []string `json:"replacedConfigs"`
}

// Validate validates this Stat import info
func (m *StatImportInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFailedConfigs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIgnoredConfigs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNewConfigs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReplacedConfigs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *StatImportInfo) validateFailedConfigs(formats strfmt.Registry) error {

	if err := validate.Required("failedConfigs", "body", m.FailedConfigs); err != nil {
		return err
	}

	return nil
}

func (m *StatImportInfo) validateIgnoredConfigs(formats strfmt.Registry) error {

	if err := validate.Required("ignoredConfigs", "body", m.IgnoredConfigs); err != nil {
		return err
	}

	return nil
}

func (m *StatImportInfo) validateNewConfigs(formats strfmt.Registry) error {

	if err := validate.Required("newConfigs", "body", m.NewConfigs); err != nil {
		return err
	}

	return nil
}

func (m *StatImportInfo) validateReplacedConfigs(formats strfmt.Registry) error {

	if err := validate.Required("replacedConfigs", "body", m.ReplacedConfigs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *StatImportInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StatImportInfo) UnmarshalBinary(b []byte) error {
	var res StatImportInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
