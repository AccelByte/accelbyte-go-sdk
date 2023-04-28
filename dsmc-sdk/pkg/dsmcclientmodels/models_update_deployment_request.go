// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUpdateDeploymentRequest Models update deployment request
//
// swagger:model Models update deployment request.
type ModelsUpdateDeploymentRequest struct {

	// allow_version_override
	// Required: true
	AllowVersionOverride *bool `json:"allow_version_override"`

	// buffer_count
	// Required: true
	// Format: int32
	BufferCount *int32 `json:"buffer_count"`

	// buffer_percent
	// Required: true
	// Format: int32
	BufferPercent *int32 `json:"buffer_percent"`

	// configuration
	// Required: true
	Configuration *string `json:"configuration"`

	// enable_region_overrides
	// Required: true
	EnableRegionOverrides *bool `json:"enable_region_overrides"`

	// game_version
	// Required: true
	GameVersion *string `json:"game_version"`

	// max_count
	// Required: true
	// Format: int32
	MaxCount *int32 `json:"max_count"`

	// min_count
	// Required: true
	// Format: int32
	MinCount *int32 `json:"min_count"`

	// regions
	// Required: true
	Regions []string `json:"regions"`

	// session_timeout
	// Required: true
	// Format: int32
	SessionTimeout *int32 `json:"session_timeout"`

	// unlimited
	// Required: true
	Unlimited *bool `json:"unlimited"`

	// use_buffer_percent
	// Required: true
	UseBufferPercent *bool `json:"use_buffer_percent"`
}

// Validate validates this Models update deployment request
func (m *ModelsUpdateDeploymentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllowVersionOverride(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBufferCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBufferPercent(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateConfiguration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnableRegionOverrides(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTimeout(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUnlimited(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUseBufferPercent(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateAllowVersionOverride(formats strfmt.Registry) error {

	if err := validate.Required("allow_version_override", "body", m.AllowVersionOverride); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateBufferCount(formats strfmt.Registry) error {

	if err := validate.Required("buffer_count", "body", m.BufferCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateBufferPercent(formats strfmt.Registry) error {

	if err := validate.Required("buffer_percent", "body", m.BufferPercent); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateConfiguration(formats strfmt.Registry) error {

	if err := validate.Required("configuration", "body", m.Configuration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateEnableRegionOverrides(formats strfmt.Registry) error {

	if err := validate.Required("enable_region_overrides", "body", m.EnableRegionOverrides); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateGameVersion(formats strfmt.Registry) error {

	if err := validate.Required("game_version", "body", m.GameVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateMaxCount(formats strfmt.Registry) error {

	if err := validate.Required("max_count", "body", m.MaxCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateMinCount(formats strfmt.Registry) error {

	if err := validate.Required("min_count", "body", m.MinCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateRegions(formats strfmt.Registry) error {

	if err := validate.Required("regions", "body", m.Regions); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateSessionTimeout(formats strfmt.Registry) error {

	if err := validate.Required("session_timeout", "body", m.SessionTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateUnlimited(formats strfmt.Registry) error {

	if err := validate.Required("unlimited", "body", m.Unlimited); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateDeploymentRequest) validateUseBufferPercent(formats strfmt.Registry) error {

	if err := validate.Required("use_buffer_percent", "body", m.UseBufferPercent); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateDeploymentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateDeploymentRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateDeploymentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
