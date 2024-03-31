// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsGameServer Models game server
//
// swagger:model Models game server.
type ModelsGameServer struct {

	// alternate_ips
	AlternateIps []string `json:"alternate_ips,omitempty"`

	// custom_attribute
	CustomAttribute string `json:"custom_attribute,omitempty"`

	// deployment
	Deployment string `json:"deployment,omitempty"`

	// game_version
	GameVersion string `json:"game_version,omitempty"`

	// image_version
	ImageVersion string `json:"image_version,omitempty"`

	// ip
	IP string `json:"ip,omitempty"`

	// is_override_game_version
	IsOverrideGameVersion bool `json:"is_override_game_version"`

	// last_update
	// Format: date-time
	LastUpdate *strfmt.DateTime `json:"last_update,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

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
	Region string `json:"region,omitempty"`

	// session_id
	SessionID string `json:"session_id,omitempty"`

	// status
	Status string `json:"status,omitempty"`
}

// Validate validates this Models game server
func (m *ModelsGameServer) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
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
