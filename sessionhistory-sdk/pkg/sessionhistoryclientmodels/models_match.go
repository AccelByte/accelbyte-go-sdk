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

// ModelsMatch Models match
//
// swagger:model Models match.
type ModelsMatch struct {

	// backfill
	Backfill bool `json:"Backfill"`

	// clientversion
	ClientVersion string `json:"ClientVersion,omitempty"`

	// matchattributes
	MatchAttributes interface{} `json:"MatchAttributes,omitempty"`

	// regionpreference
	RegionPreference []string `json:"RegionPreference,omitempty"`

	// servername
	ServerName string `json:"ServerName,omitempty"`

	// teams
	Teams []*ModelsTeam `json:"Teams,omitempty"`

	// tickets
	Tickets []*ModelsTicket `json:"Tickets,omitempty"`
}

// Validate validates this Models match
func (m *ModelsMatch) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMatch) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMatch) UnmarshalBinary(b []byte) error {
	var res ModelsMatch
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
