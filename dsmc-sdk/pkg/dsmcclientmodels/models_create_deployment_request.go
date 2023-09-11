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

// ModelsCreateDeploymentRequest Models create deployment request
//
// swagger:model Models create deployment request.
type ModelsCreateDeploymentRequest struct {

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

	// extendable_session
	ExtendableSession bool `json:"extendable_session"`

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

	// overrides
	Overrides map[string]ModelsDeploymentConfigOverride `json:"overrides,omitempty"`

	// region_overrides
	RegionOverrides map[string]ModelsPodCountConfigOverride `json:"region_overrides,omitempty"`

	// regions
	Regions []string `json:"regions,omitempty"`

	// session_timeout
	// Format: int32
	SessionTimeout int32 `json:"session_timeout,omitempty"`

	// unlimited
	// Required: true
	Unlimited *bool `json:"unlimited"`

	// use_buffer_percent
	// Required: true
	UseBufferPercent *bool `json:"use_buffer_percent"`
}

// Validate validates this Models create deployment request
func (m *ModelsCreateDeploymentRequest) Validate(formats strfmt.Registry) error {
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

func (m *ModelsCreateDeploymentRequest) validateAllowVersionOverride(formats strfmt.Registry) error {

	if err := validate.Required("allow_version_override", "body", m.AllowVersionOverride); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentRequest) validateBufferCount(formats strfmt.Registry) error {

	if err := validate.Required("buffer_count", "body", m.BufferCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentRequest) validateBufferPercent(formats strfmt.Registry) error {

	if err := validate.Required("buffer_percent", "body", m.BufferPercent); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentRequest) validateConfiguration(formats strfmt.Registry) error {

	if err := validate.Required("configuration", "body", m.Configuration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentRequest) validateEnableRegionOverrides(formats strfmt.Registry) error {

	if err := validate.Required("enable_region_overrides", "body", m.EnableRegionOverrides); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentRequest) validateGameVersion(formats strfmt.Registry) error {

	if err := validate.Required("game_version", "body", m.GameVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentRequest) validateMaxCount(formats strfmt.Registry) error {

	if err := validate.Required("max_count", "body", m.MaxCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentRequest) validateMinCount(formats strfmt.Registry) error {

	if err := validate.Required("min_count", "body", m.MinCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentRequest) validateUnlimited(formats strfmt.Registry) error {

	if err := validate.Required("unlimited", "body", m.Unlimited); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentRequest) validateUseBufferPercent(formats strfmt.Registry) error {

	if err := validate.Required("use_buffer_percent", "body", m.UseBufferPercent); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateDeploymentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateDeploymentRequest) UnmarshalBinary(b []byte) error {
	var res ModelsCreateDeploymentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
