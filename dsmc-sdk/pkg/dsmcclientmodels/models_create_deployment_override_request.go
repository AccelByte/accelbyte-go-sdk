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

// ModelsCreateDeploymentOverrideRequest Models create deployment override request
//
// swagger:model Models create deployment override request.
type ModelsCreateDeploymentOverrideRequest struct {

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

// Validate validates this Models create deployment override request
func (m *ModelsCreateDeploymentOverrideRequest) Validate(formats strfmt.Registry) error {
	var res []error

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

func (m *ModelsCreateDeploymentOverrideRequest) validateBufferCount(formats strfmt.Registry) error {

	if err := validate.Required("buffer_count", "body", m.BufferCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentOverrideRequest) validateBufferPercent(formats strfmt.Registry) error {

	if err := validate.Required("buffer_percent", "body", m.BufferPercent); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentOverrideRequest) validateConfiguration(formats strfmt.Registry) error {

	if err := validate.Required("configuration", "body", m.Configuration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentOverrideRequest) validateEnableRegionOverrides(formats strfmt.Registry) error {

	if err := validate.Required("enable_region_overrides", "body", m.EnableRegionOverrides); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentOverrideRequest) validateGameVersion(formats strfmt.Registry) error {

	if err := validate.Required("game_version", "body", m.GameVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentOverrideRequest) validateMaxCount(formats strfmt.Registry) error {

	if err := validate.Required("max_count", "body", m.MaxCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentOverrideRequest) validateMinCount(formats strfmt.Registry) error {

	if err := validate.Required("min_count", "body", m.MinCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentOverrideRequest) validateUnlimited(formats strfmt.Registry) error {

	if err := validate.Required("unlimited", "body", m.Unlimited); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDeploymentOverrideRequest) validateUseBufferPercent(formats strfmt.Registry) error {

	if err := validate.Required("use_buffer_percent", "body", m.UseBufferPercent); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateDeploymentOverrideRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateDeploymentOverrideRequest) UnmarshalBinary(b []byte) error {
	var res ModelsCreateDeploymentOverrideRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
