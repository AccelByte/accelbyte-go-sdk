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

// MatchmakerMatchTicketRecord Matchmaker match ticket record
//
// swagger:model Matchmaker match ticket record.
type MatchmakerMatchTicketRecord struct {

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"CreatedAt"`

	// isactive
	// Required: true
	IsActive *bool `json:"IsActive"`

	// partysessionid
	// Required: true
	PartySessionID *string `json:"PartySessionID"`

	// proposedproposal
	// Required: true
	ProposedProposal *MatchmakerProposedProposal `json:"ProposedProposal"`

	// sessionid
	// Required: true
	SessionID *string `json:"SessionID"`

	// ticket
	// Required: true
	Ticket *MatchmakerTicket `json:"Ticket"`

	// ticketid
	// Required: true
	TicketID *string `json:"TicketID"`

	// uniqueticketid
	// Required: true
	UniqueTicketID *string `json:"UniqueTicketID"`
}

// Validate validates this Matchmaker match ticket record
func (m *MatchmakerMatchTicketRecord) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartySessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProposedProposal(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicket(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUniqueTicketID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *MatchmakerMatchTicketRecord) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("CreatedAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("CreatedAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerMatchTicketRecord) validateIsActive(formats strfmt.Registry) error {

	if err := validate.Required("IsActive", "body", m.IsActive); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerMatchTicketRecord) validatePartySessionID(formats strfmt.Registry) error {

	if err := validate.Required("PartySessionID", "body", m.PartySessionID); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerMatchTicketRecord) validateProposedProposal(formats strfmt.Registry) error {

	if err := validate.Required("ProposedProposal", "body", m.ProposedProposal); err != nil {
		return err
	}

	if m.ProposedProposal != nil {
		if err := m.ProposedProposal.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("ProposedProposal")
			}
			return err
		}
	}

	return nil
}

func (m *MatchmakerMatchTicketRecord) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("SessionID", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerMatchTicketRecord) validateTicket(formats strfmt.Registry) error {

	if err := validate.Required("Ticket", "body", m.Ticket); err != nil {
		return err
	}

	if m.Ticket != nil {
		if err := m.Ticket.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("Ticket")
			}
			return err
		}
	}

	return nil
}

func (m *MatchmakerMatchTicketRecord) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("TicketID", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerMatchTicketRecord) validateUniqueTicketID(formats strfmt.Registry) error {

	if err := validate.Required("UniqueTicketID", "body", m.UniqueTicketID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *MatchmakerMatchTicketRecord) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *MatchmakerMatchTicketRecord) UnmarshalBinary(b []byte) error {
	var res MatchmakerMatchTicketRecord
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
