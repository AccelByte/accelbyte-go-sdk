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

// MatchmakerTeam Matchmaker team
//
// swagger:model Matchmaker team.
type MatchmakerTeam struct {

	// parties
	Parties []*MatchmakerParty `json:"Parties,omitempty"`

	// userids
	UserIDs []string `json:"UserIDs,omitempty"`
}

// Validate validates this Matchmaker team
func (m *MatchmakerTeam) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *MatchmakerTeam) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *MatchmakerTeam) UnmarshalBinary(b []byte) error {
	var res MatchmakerTeam
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
