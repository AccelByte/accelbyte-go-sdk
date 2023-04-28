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

// APIBackfillGetResponse Api backfill get response
//
// swagger:model Api backfill get response.
type APIBackfillGetResponse struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// matchpool
	MatchPool string `json:"matchPool,omitempty"`

	// matchsessionid
	MatchSessionID string `json:"matchSessionID,omitempty"`

	// partialmatch
	PartialMatch *APIMatch `json:"partialMatch,omitempty"`

	// ticketid
	TicketID string `json:"ticketID,omitempty"`
}

// Validate validates this Api backfill get response
func (m *APIBackfillGetResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APIBackfillGetResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIBackfillGetResponse) UnmarshalBinary(b []byte) error {
	var res APIBackfillGetResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
