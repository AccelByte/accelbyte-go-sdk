// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// MatchmakerTeam Matchmaker team
//
// swagger:model Matchmaker team.
type MatchmakerTeam struct {

	// parties
	// Required: true
	Parties []*MatchmakerParty `json:"Parties"`

	// userids
	// Required: true
	UserIDs []string `json:"UserIDs"`
}

// Validate validates this Matchmaker team
func (m *MatchmakerTeam) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateParties(formats); err != nil {
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

func (m *MatchmakerTeam) validateParties(formats strfmt.Registry) error {

	if err := validate.Required("Parties", "body", m.Parties); err != nil {
		return err
	}

	for i := 0; i < len(m.Parties); i++ {
		if swag.IsZero(m.Parties[i]) { // not required
			continue
		}

		if m.Parties[i] != nil {
			if err := m.Parties[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Parties" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *MatchmakerTeam) validateUserIDs(formats strfmt.Registry) error {

	if err := validate.Required("UserIDs", "body", m.UserIDs); err != nil {
		return err
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
