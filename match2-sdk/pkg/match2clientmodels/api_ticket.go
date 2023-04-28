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

// APITicket Api ticket
//
// swagger:model Api ticket.
type APITicket struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// latencies
	Latencies map[string]int64 `json:"latencies,omitempty"`

	// matchpool
	MatchPool string `json:"matchPool,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// partysessionid
	PartySessionID string `json:"partySessionID,omitempty"`

	// players
	Players []*APIPlayerData `json:"players,omitempty"`

	// ticketattributes
	TicketAttributes interface{} `json:"ticketAttributes,omitempty"`

	// ticketid
	TicketID string `json:"ticketID,omitempty"`
}

// Validate validates this Api ticket
func (m *APITicket) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APITicket) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APITicket) UnmarshalBinary(b []byte) error {
	var res APITicket
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
