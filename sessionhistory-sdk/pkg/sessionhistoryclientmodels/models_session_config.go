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

// ModelsSessionConfig Models session config
//
// swagger:model Models session config.
type ModelsSessionConfig struct {

	// clientversion
	ClientVersion string `json:"ClientVersion,omitempty"`

	// deployment
	Deployment string `json:"Deployment,omitempty"`

	// inactivetimeout
	// Format: int32
	InactiveTimeout int32 `json:"InactiveTimeout,omitempty"`

	// invitetimeout
	// Format: int32
	InviteTimeout int32 `json:"InviteTimeout,omitempty"`

	// joinability
	Joinability string `json:"Joinability,omitempty"`

	// maxplayers
	// Format: int32
	MaxPlayers int32 `json:"MaxPlayers,omitempty"`

	// minplayers
	// Format: int32
	MinPlayers int32 `json:"MinPlayers,omitempty"`

	// name
	Name string `json:"Name,omitempty"`

	// persistent
	Persistent bool `json:"Persistent"`

	// requestedregions
	RequestedRegions []string `json:"RequestedRegions,omitempty"`

	// type
	Type string `json:"Type,omitempty"`
}

// Validate validates this Models session config
func (m *ModelsSessionConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSessionConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSessionConfig) UnmarshalBinary(b []byte) error {
	var res ModelsSessionConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
