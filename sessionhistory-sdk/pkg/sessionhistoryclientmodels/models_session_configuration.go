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

// ModelsSessionConfiguration Models session configuration
//
// swagger:model Models session configuration.
type ModelsSessionConfiguration struct {

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

	// persistent
	Persistent bool `json:"Persistent"`

	// requestedregions
	RequestedRegions []string `json:"RequestedRegions,omitempty"`

	// textchat
	TextChat bool `json:"TextChat"`

	// type
	Type string `json:"Type,omitempty"`
}

// Validate validates this Models session configuration
func (m *ModelsSessionConfiguration) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSessionConfiguration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSessionConfiguration) UnmarshalBinary(b []byte) error {
	var res ModelsSessionConfiguration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
