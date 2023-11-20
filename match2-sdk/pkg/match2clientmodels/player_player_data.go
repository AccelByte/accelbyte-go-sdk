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

// PlayerPlayerData Player player data
//
// swagger:model Player player data.
type PlayerPlayerData struct {

	// attributes
	// Required: true
	Attributes interface{} `json:"Attributes"`

	// partyid
	// Required: true
	PartyID *string `json:"PartyID"`

	// playerid
	// Required: true
	PlayerID *string `json:"PlayerID"`
}

// Validate validates this Player player data
func (m *PlayerPlayerData) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePartyID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlayerID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PlayerPlayerData) validatePartyID(formats strfmt.Registry) error {

	if err := validate.Required("PartyID", "body", m.PartyID); err != nil {
		return err
	}

	return nil
}

func (m *PlayerPlayerData) validatePlayerID(formats strfmt.Registry) error {

	if err := validate.Required("PlayerID", "body", m.PlayerID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PlayerPlayerData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlayerPlayerData) UnmarshalBinary(b []byte) error {
	var res PlayerPlayerData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
