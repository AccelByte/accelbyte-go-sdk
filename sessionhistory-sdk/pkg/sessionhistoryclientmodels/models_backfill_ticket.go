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

// ModelsBackfillTicket Models backfill ticket
//
// swagger:model Models backfill ticket.
type ModelsBackfillTicket struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"CreatedAt,omitempty"`

	// matchpool
	MatchPool string `json:"MatchPool,omitempty"`

	// matchsessionid
	MatchSessionID string `json:"MatchSessionID,omitempty"`

	// matchsessionversion
	// Format: int32
	MatchSessionVersion int32 `json:"MatchSessionVersion,omitempty"`

	// partialmatch
	PartialMatch *ModelsMatch `json:"PartialMatch,omitempty"`

	// ticketid
	TicketID string `json:"TicketID,omitempty"`
}

// Validate validates this Models backfill ticket
func (m *ModelsBackfillTicket) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBackfillTicket) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBackfillTicket) UnmarshalBinary(b []byte) error {
	var res ModelsBackfillTicket
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
