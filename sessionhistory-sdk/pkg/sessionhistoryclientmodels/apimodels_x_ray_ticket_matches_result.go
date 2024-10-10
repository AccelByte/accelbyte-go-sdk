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

// ApimodelsXRayTicketMatchesResult Apimodels X ray ticket matches result
//
// swagger:model Apimodels X ray ticket matches result.
type ApimodelsXRayTicketMatchesResult struct {

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

// Validate validates this Apimodels X ray ticket matches result
func (m *ApimodelsXRayTicketMatchesResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsXRayTicketMatchesResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsXRayTicketMatchesResult) UnmarshalBinary(b []byte) error {
	var res ApimodelsXRayTicketMatchesResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
