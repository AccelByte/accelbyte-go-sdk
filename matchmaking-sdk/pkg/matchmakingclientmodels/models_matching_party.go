// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMatchingParty Models matching party
//
// swagger:model Models matching party.
type ModelsMatchingParty struct {

	// first_ticket_created_at
	// Required: true
	// Format: int64
	FirstTicketCreatedAt *int64 `json:"first_ticket_created_at"`

	// party_attributes
	// Required: true
	PartyAttributes interface{} `json:"party_attributes"`

	// party_id
	// Required: true
	PartyID string `json:"party_id"`

	// party_members
	// Required: true
	PartyMembers []*ModelsPartyMember `json:"party_members"`

	// ticket_created_at
	// Required: true
	// Format: int64
	TicketCreatedAt *int64 `json:"ticket_created_at"`

	// ticket_id
	// Required: true
	TicketID string `json:"ticket_id"`
}

// Validate validates this Models matching party
func (m *ModelsMatchingParty) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFirstTicketCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartyID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartyMembers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMatchingParty) validateFirstTicketCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("first_ticket_created_at", "body", m.FirstTicketCreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchingParty) validatePartyID(formats strfmt.Registry) error {

	if err := validate.Required("party_id", "body", m.PartyID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchingParty) validatePartyMembers(formats strfmt.Registry) error {

	if err := validate.Required("party_members", "body", m.PartyMembers); err != nil {
		return err
	}

	for i := 0; i < len(m.PartyMembers); i++ {
		if swag.IsZero(m.PartyMembers[i]) { // not required
			continue
		}

		if m.PartyMembers[i] != nil {
			if err := m.PartyMembers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("party_members" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsMatchingParty) validateTicketCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("ticket_created_at", "body", m.TicketCreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchingParty) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticket_id", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMatchingParty) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMatchingParty) UnmarshalBinary(b []byte) error {
	var res ModelsMatchingParty
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
