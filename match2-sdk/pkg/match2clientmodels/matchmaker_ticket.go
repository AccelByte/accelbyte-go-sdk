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

// MatchmakerTicket Matchmaker ticket
//
// swagger:model Matchmaker ticket.
type MatchmakerTicket struct {

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"CreatedAt"`

	// isactive
	// Required: true
	IsActive *bool `json:"IsActive"`

	// ispivot
	// Required: true
	IsPivot *bool `json:"IsPivot"`

	// latencies
	// Required: true
	Latencies map[string]int64 `json:"Latencies"`

	// matchpool
	// Required: true
	MatchPool *string `json:"MatchPool"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// partysessionid
	// Required: true
	PartySessionID *string `json:"PartySessionID"`

	// players
	// Required: true
	Players []*PlayerPlayerData `json:"Players"`

	// proposedproposal
	// Required: true
	ProposedProposal *MatchmakerProposedProposal `json:"ProposedProposal"`

	// ticketattributes
	// Required: true
	TicketAttributes interface{} `json:"TicketAttributes"`

	// ticketid
	// Required: true
	TicketID *string `json:"TicketID"`

	// ticketinformation
	// Required: true
	TicketInformation interface{} `json:"TicketInformation"`
}

// Validate validates this Matchmaker ticket
func (m *MatchmakerTicket) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsPivot(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchPool(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartySessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlayers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProposedProposal(formats); err != nil {
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

func (m *MatchmakerTicket) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("CreatedAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("CreatedAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerTicket) validateIsActive(formats strfmt.Registry) error {

	if err := validate.Required("IsActive", "body", m.IsActive); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerTicket) validateIsPivot(formats strfmt.Registry) error {

	if err := validate.Required("IsPivot", "body", m.IsPivot); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerTicket) validateMatchPool(formats strfmt.Registry) error {

	if err := validate.Required("MatchPool", "body", m.MatchPool); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerTicket) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerTicket) validatePartySessionID(formats strfmt.Registry) error {

	if err := validate.Required("PartySessionID", "body", m.PartySessionID); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerTicket) validatePlayers(formats strfmt.Registry) error {

	if err := validate.Required("Players", "body", m.Players); err != nil {
		return err
	}

	for i := 0; i < len(m.Players); i++ {
		if swag.IsZero(m.Players[i]) { // not required
			continue
		}

		if m.Players[i] != nil {
			if err := m.Players[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Players" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *MatchmakerTicket) validateProposedProposal(formats strfmt.Registry) error {

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

func (m *MatchmakerTicket) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("TicketID", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *MatchmakerTicket) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *MatchmakerTicket) UnmarshalBinary(b []byte) error {
	var res MatchmakerTicket
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
