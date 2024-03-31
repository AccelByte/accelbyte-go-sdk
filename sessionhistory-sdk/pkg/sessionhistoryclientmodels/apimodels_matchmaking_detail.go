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

// ApimodelsMatchmakingDetail Apimodels matchmaking detail
//
// swagger:model Apimodels matchmaking detail.
type ApimodelsMatchmakingDetail struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// expiredat
	// Format: date-time
	ExpiredAt *strfmt.DateTime `json:"expiredAt,omitempty"`

	// gamesessionid
	GameSessionID string `json:"gameSessionID,omitempty"`

	// histories
	Histories []*ApimodelsMatchmakingHistory `json:"histories,omitempty"`

	// matchpool
	MatchPool string `json:"matchPool,omitempty"`

	// matchrule
	MatchRule string `json:"matchRule,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// partysessionid
	PartySessionID string `json:"partySessionID,omitempty"`

	// ticketid
	TicketID string `json:"ticketID,omitempty"`
}

// Validate validates this Apimodels matchmaking detail
func (m *ApimodelsMatchmakingDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsMatchmakingDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsMatchmakingDetail) UnmarshalBinary(b []byte) error {
	var res ApimodelsMatchmakingDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
