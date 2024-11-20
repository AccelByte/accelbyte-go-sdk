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

// ModelsMatchTicket Models match ticket
//
// swagger:model Models match ticket.
type ModelsMatchTicket struct {

	// actualtimetomatch
	ActualTimeToMatch string `json:"ActualTimeToMatch,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"CreatedAt,omitempty"`

	// ispivot
	IsPivot bool `json:"IsPivot"`

	// latencies
	Latencies map[string]int64 `json:"Latencies,omitempty"`

	// matchpool
	MatchPool string `json:"MatchPool,omitempty"`

	// matchedat
	// Format: date-time
	MatchedAt *strfmt.DateTime `json:"MatchedAt,omitempty"`

	// namespace
	Namespace string `json:"Namespace,omitempty"`

	// partysessionid
	PartySessionID string `json:"PartySessionID,omitempty"`

	// players
	Players []*ModelsPlayerData `json:"Players,omitempty"`

	// proposedproposal
	ProposedProposal *ModelsProposedProposal `json:"ProposedProposal,omitempty"`

	// regionpreference
	RegionPreference []string `json:"RegionPreference,omitempty"`

	// ticketattributes
	TicketAttributes interface{} `json:"TicketAttributes,omitempty"`

	// ticketid
	TicketID string `json:"TicketID,omitempty"`

	// timetomatch
	// Format: double
	TimeToMatch float64 `json:"TimeToMatch,omitempty"`
}

// Validate validates this Models match ticket
func (m *ModelsMatchTicket) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMatchTicket) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMatchTicket) UnmarshalBinary(b []byte) error {
	var res ModelsMatchTicket
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
