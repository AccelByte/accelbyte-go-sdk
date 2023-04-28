// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievementclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ServiceImportConfigResponse Service import config response
//
// swagger:model Service import config response.
type ServiceImportConfigResponse struct {

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

// Validate validates this Service import config response
func (m *ServiceImportConfigResponse) Validate(formats strfmt.Registry) error {
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

func (m *ServiceImportConfigResponse) validateFailedConfigs(formats strfmt.Registry) error {

	if err := validate.Required("failedConfigs", "body", m.FailedConfigs); err != nil {
		return err
	}

	return nil
}

func (m *ServiceImportConfigResponse) validateIgnoredConfigs(formats strfmt.Registry) error {

	if err := validate.Required("ignoredConfigs", "body", m.IgnoredConfigs); err != nil {
		return err
	}

	return nil
}

func (m *ServiceImportConfigResponse) validateNewConfigs(formats strfmt.Registry) error {

	if err := validate.Required("newConfigs", "body", m.NewConfigs); err != nil {
		return err
	}

	return nil
}

func (m *ServiceImportConfigResponse) validateReplacedConfigs(formats strfmt.Registry) error {

	if err := validate.Required("replacedConfigs", "body", m.ReplacedConfigs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ServiceImportConfigResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ServiceImportConfigResponse) UnmarshalBinary(b []byte) error {
	var res ServiceImportConfigResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
