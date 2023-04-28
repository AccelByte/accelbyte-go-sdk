// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsImportConfigResponse Models import config response
//
// swagger:model Models import config response.
type ModelsImportConfigResponse struct {

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

// Validate validates this Models import config response
func (m *ModelsImportConfigResponse) Validate(formats strfmt.Registry) error {
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

func (m *ModelsImportConfigResponse) validateFailedConfigs(formats strfmt.Registry) error {

	if err := validate.Required("failedConfigs", "body", m.FailedConfigs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImportConfigResponse) validateIgnoredConfigs(formats strfmt.Registry) error {

	if err := validate.Required("ignoredConfigs", "body", m.IgnoredConfigs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImportConfigResponse) validateNewConfigs(formats strfmt.Registry) error {

	if err := validate.Required("newConfigs", "body", m.NewConfigs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImportConfigResponse) validateReplacedConfigs(formats strfmt.Registry) error {

	if err := validate.Required("replacedConfigs", "body", m.ReplacedConfigs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsImportConfigResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsImportConfigResponse) UnmarshalBinary(b []byte) error {
	var res ModelsImportConfigResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
