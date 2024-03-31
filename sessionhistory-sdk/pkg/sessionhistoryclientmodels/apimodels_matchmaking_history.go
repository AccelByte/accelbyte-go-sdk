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

// ApimodelsMatchmakingHistory Apimodels matchmaking history
//
// swagger:model Apimodels matchmaking history.
type ApimodelsMatchmakingHistory struct {

	// backfillproposal
	BackfillProposal *ModelsBackfillProposal `json:"backfillProposal,omitempty"`

	// backfillticket
	BackfillTicket *ModelsBackfillTicket `json:"backfillTicket,omitempty"`

	// eventname
	EventName string `json:"eventName,omitempty"`

	// requesteduserid
	RequestedUserID string `json:"requestedUserID,omitempty"`

	// ticket
	Ticket *ModelsTicket `json:"ticket,omitempty"`

	// timestamp
	// Format: date-time
	Timestamp *strfmt.DateTime `json:"timestamp,omitempty"`

	// unbackfillreason
	UnbackfillReason string `json:"unbackfillReason,omitempty"`
}

// Validate validates this Apimodels matchmaking history
func (m *ApimodelsMatchmakingHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsMatchmakingHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsMatchmakingHistory) UnmarshalBinary(b []byte) error {
	var res ApimodelsMatchmakingHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
