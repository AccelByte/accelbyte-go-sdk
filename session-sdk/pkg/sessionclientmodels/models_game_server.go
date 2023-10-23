// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGameServer Models game server
//
// swagger:model Models game server.
type ModelsGameServer struct {

	// alternate_ips
	AlternateIps []string `json:"alternate_ips,omitempty"`

	// ams_protocol
	AmsProtocol []*ModelsPortConfigurationAMS `json:"ams_protocol,omitempty"`

	// custom_attribute
	// Required: true
	CustomAttribute *string `json:"custom_attribute"`

	// deployment
	Deployment string `json:"deployment,omitempty"`

	// game_version
	GameVersion string `json:"game_version,omitempty"`

	// image_version
	ImageVersion string `json:"image_version,omitempty"`

	// ip
	IP string `json:"ip,omitempty"`

	// is_override_game_version
	// Required: true
	IsOverrideGameVersion *bool `json:"is_override_game_version"`

	// last_update
	// Required: true
	// Format: date-time
	LastUpdate strfmt.DateTime `json:"last_update"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// pod_name
	PodName string `json:"pod_name,omitempty"`

	// port
	// Format: int32
	Port int32 `json:"port,omitempty"`

	// ports
	Ports map[string]int64 `json:"ports,omitempty"`

	// protocol
	Protocol string `json:"protocol,omitempty"`

	// provider
	Provider string `json:"provider,omitempty"`

	// region
	// Required: true
	Region *string `json:"region"`

	// session_id
	// Required: true
	SessionID *string `json:"session_id"`

	// source
	// Required: true
	Source *string `json:"source"`

	// status
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Models game server
func (m *ModelsGameServer) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCustomAttribute(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsOverrideGameVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastUpdate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSource(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGameServer) validateCustomAttribute(formats strfmt.Registry) error {

	if err := validate.Required("custom_attribute", "body", m.CustomAttribute); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameServer) validateIsOverrideGameVersion(formats strfmt.Registry) error {

	if err := validate.Required("is_override_game_version", "body", m.IsOverrideGameVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameServer) validateLastUpdate(formats strfmt.Registry) error {

	if err := validate.Required("last_update", "body", strfmt.DateTime(m.LastUpdate)); err != nil {
		return err
	}

	if err := validate.FormatOf("last_update", "body", "date-time", m.LastUpdate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameServer) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameServer) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameServer) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("session_id", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameServer) validateSource(formats strfmt.Registry) error {

	if err := validate.Required("source", "body", m.Source); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameServer) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGameServer) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGameServer) UnmarshalBinary(b []byte) error {
	var res ModelsGameServer
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
