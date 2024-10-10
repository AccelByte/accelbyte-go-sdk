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

// ModelsTicket Models ticket
//
// swagger:model Models ticket.
type ModelsTicket struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"CreatedAt,omitempty"`

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

	// ticketattributes
	TicketAttributes interface{} `json:"TicketAttributes,omitempty"`

	// ticketid
	TicketID string `json:"TicketID,omitempty"`
}

// Validate validates this Models ticket
func (m *ModelsTicket) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsTicket) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsTicket) UnmarshalBinary(b []byte) error {
	var res ModelsTicket
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
