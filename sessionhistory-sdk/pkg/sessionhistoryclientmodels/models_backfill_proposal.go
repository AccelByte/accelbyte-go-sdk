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

// ModelsBackfillProposal Models backfill proposal
//
// swagger:model Models backfill proposal.
type ModelsBackfillProposal struct {

	// addedtickets
	AddedTickets []*ModelsTicket `json:"AddedTickets,omitempty"`

	// backfillticketid
	BackfillTicketID string `json:"BackfillTicketID,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"CreatedAt,omitempty"`

	// matchpool
	MatchPool string `json:"MatchPool,omitempty"`

	// matchsessionid
	MatchSessionID string `json:"MatchSessionID,omitempty"`

	// proposalid
	ProposalID string `json:"ProposalID,omitempty"`

	// proposedteams
	ProposedTeams []*ModelsTeam `json:"ProposedTeams,omitempty"`
}

// Validate validates this Models backfill proposal
func (m *ModelsBackfillProposal) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBackfillProposal) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBackfillProposal) UnmarshalBinary(b []byte) error {
	var res ModelsBackfillProposal
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
