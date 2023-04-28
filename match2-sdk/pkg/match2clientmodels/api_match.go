// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// APIMatch Api match
//
// swagger:model Api match.
type APIMatch struct {

	// backfill
	Backfill bool `json:"backfill"`

	// clientversion
	ClientVersion string `json:"clientVersion,omitempty"`

	// matchattributes
	MatchAttributes interface{} `json:"matchAttributes,omitempty"`

	// regionpreference
	RegionPreference []string `json:"regionPreference,omitempty"`

	// servername
	ServerName string `json:"serverName,omitempty"`

	// teams
	Teams []*APITeam `json:"teams,omitempty"`

	// tickets
	Tickets []*APITicket `json:"tickets,omitempty"`
}

// Validate validates this Api match
func (m *APIMatch) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APIMatch) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIMatch) UnmarshalBinary(b []byte) error {
	var res APIMatch
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
