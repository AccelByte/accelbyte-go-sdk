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

// APIBackfillProposalResponse Api backfill proposal response
//
// swagger:model Api backfill proposal response.
type APIBackfillProposalResponse struct {

	// backfillticketid
	BackfillTicketID string `json:"backfillTicketID,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// matchpool
	MatchPool string `json:"matchPool,omitempty"`

	// matchsessionid
	MatchSessionID string `json:"matchSessionID,omitempty"`

	// proposalid
	ProposalID string `json:"proposalID,omitempty"`

	// proposedteams
	ProposedTeams []*APITeam `json:"proposedTeams,omitempty"`

	// tickets
	Tickets []*APITicket `json:"tickets,omitempty"`
}

// Validate validates this Api backfill proposal response
func (m *APIBackfillProposalResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APIBackfillProposalResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIBackfillProposalResponse) UnmarshalBinary(b []byte) error {
	var res APIBackfillProposalResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
