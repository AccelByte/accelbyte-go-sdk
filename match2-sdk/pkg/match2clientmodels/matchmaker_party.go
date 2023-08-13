// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// MatchmakerParty Matchmaker party
//
// swagger:model Matchmaker party.
type MatchmakerParty struct {

	// partyid
	// Required: true
	PartyID *string `json:"partyID"`

	// userids
	// Required: true
	UserIDs []string `json:"userIDs"`
}

// Validate validates this Matchmaker party
func (m *MatchmakerParty) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePartyID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserIDs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *MatchmakerParty) validatePartyID(formats strfmt.Registry) error {

	if err := validate.Required("partyID", "body", m.PartyID); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerParty) validateUserIDs(formats strfmt.Registry) error {

	if err := validate.Required("userIDs", "body", m.UserIDs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *MatchmakerParty) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *MatchmakerParty) UnmarshalBinary(b []byte) error {
	var res MatchmakerParty
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
