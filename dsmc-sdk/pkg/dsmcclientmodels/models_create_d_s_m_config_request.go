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

// ModelsCreateDSMConfigRequest Models create DSM config request
//
// swagger:model Models create DSM config request.
type ModelsCreateDSMConfigRequest struct {

	// claim_timeout
	// Required: true
	// Format: int32
	ClaimTimeout int32 `json:"claim_timeout"`

	// creation_timeout
	// Required: true
	// Format: int32
	CreationTimeout int32 `json:"creation_timeout"`

	// default_version
	// Required: true
	DefaultVersion string `json:"default_version"`

	// port
	// Required: true
	// Format: int32
	Port int32 `json:"port"`

	// ports
	// Required: true
	Ports map[string]int64 `json:"ports"`

	// protocol
	// Required: true
	Protocol string `json:"protocol"`

	// providers
	// Required: true
	Providers []string `json:"providers"`

	// session_timeout
	// Required: true
	// Format: int32
	SessionTimeout int32 `json:"session_timeout"`

	// unreachable_timeout
	// Required: true
	// Format: int32
	UnreachableTimeout int32 `json:"unreachable_timeout"`
}

// Validate validates this Models create DSM config request
func (m *ModelsCreateDSMConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClaimTimeout(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreationTimeout(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDefaultVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePort(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProtocol(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProviders(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTimeout(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUnreachableTimeout(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreateDSMConfigRequest) validateClaimTimeout(formats strfmt.Registry) error {

	if err := validate.Required("claim_timeout", "body", m.ClaimTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDSMConfigRequest) validateCreationTimeout(formats strfmt.Registry) error {

	if err := validate.Required("creation_timeout", "body", m.CreationTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDSMConfigRequest) validateDefaultVersion(formats strfmt.Registry) error {

	if err := validate.Required("default_version", "body", m.DefaultVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDSMConfigRequest) validatePort(formats strfmt.Registry) error {

	if err := validate.Required("port", "body", m.Port); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDSMConfigRequest) validateProtocol(formats strfmt.Registry) error {

	if err := validate.Required("protocol", "body", m.Protocol); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDSMConfigRequest) validateProviders(formats strfmt.Registry) error {

	if err := validate.Required("providers", "body", m.Providers); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDSMConfigRequest) validateSessionTimeout(formats strfmt.Registry) error {

	if err := validate.Required("session_timeout", "body", m.SessionTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateDSMConfigRequest) validateUnreachableTimeout(formats strfmt.Registry) error {

	if err := validate.Required("unreachable_timeout", "body", m.UnreachableTimeout); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateDSMConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateDSMConfigRequest) UnmarshalBinary(b []byte) error {
	var res ModelsCreateDSMConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
