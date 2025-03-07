// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsXRayTicketObservabilityRequest Apimodels X ray ticket observability request
//
// swagger:model Apimodels X ray ticket observability request.
type ApimodelsXRayTicketObservabilityRequest struct {

	// action
	// Required: true
	Action *string `json:"action"`

	// activealliancerule
	ActiveAllianceRule *ModelsAllianceRule `json:"activeAllianceRule,omitempty"`

	// activematchingrule
	ActiveMatchingRule []*ModelsMatchingRule `json:"activeMatchingRule,omitempty"`

	// function
	Function string `json:"function,omitempty"`

	// gamemode
	// Required: true
	GameMode *string `json:"gameMode"`

	// isbackfillmatch
	// Required: true
	IsBackfillMatch *bool `json:"isBackfillMatch"`

	// isrulesetflexed
	// Required: true
	IsRuleSetFlexed *bool `json:"isRuleSetFlexed"`

	// iteration
	// Format: int32
	Iteration int32 `json:"iteration,omitempty"`

	// matchid
	MatchID string `json:"matchID,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// remainingplayersperticket
	// Format: int32
	RemainingPlayersPerTicket []int32 `json:"remainingPlayersPerTicket,omitempty"`

	// remainingtickets
	// Format: int32
	RemainingTickets int32 `json:"remainingTickets,omitempty"`

	// sessiontickid
	// Required: true
	SessionTickID *string `json:"sessionTickID"`

	// tickid
	// Required: true
	// Format: int64
	TickID *int64 `json:"tickID"`

	// ticketid
	// Required: true
	TicketID *string `json:"ticketID"`

	// timetomatchsec
	// Format: double
	TimeToMatchSec float64 `json:"timeToMatchSec,omitempty"`

	// timestamp
	// Required: true
	// Format: date-time
	Timestamp strfmt.DateTime `json:"timestamp"`

	// unbackfillreason
	UnbackfillReason string `json:"unbackfillReason,omitempty"`

	// unmatchreason
	UnmatchReason string `json:"unmatchReason,omitempty"`
}

// Validate validates this Apimodels X ray ticket observability request
func (m *ApimodelsXRayTicketObservabilityRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameMode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsBackfillMatch(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsRuleSetFlexed(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTickID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTickID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimestamp(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsXRayTicketObservabilityRequest) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketObservabilityRequest) validateGameMode(formats strfmt.Registry) error {

	if err := validate.Required("gameMode", "body", m.GameMode); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketObservabilityRequest) validateIsBackfillMatch(formats strfmt.Registry) error {

	if err := validate.Required("isBackfillMatch", "body", m.IsBackfillMatch); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketObservabilityRequest) validateIsRuleSetFlexed(formats strfmt.Registry) error {

	if err := validate.Required("isRuleSetFlexed", "body", m.IsRuleSetFlexed); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketObservabilityRequest) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketObservabilityRequest) validateSessionTickID(formats strfmt.Registry) error {

	if err := validate.Required("sessionTickID", "body", m.SessionTickID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketObservabilityRequest) validateTickID(formats strfmt.Registry) error {

	if err := validate.Required("tickID", "body", m.TickID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketObservabilityRequest) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticketID", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketObservabilityRequest) validateTimestamp(formats strfmt.Registry) error {

	if err := validate.Required("timestamp", "body", strfmt.DateTime(m.Timestamp)); err != nil {
		return err
	}

	if err := validate.FormatOf("timestamp", "body", "date-time", m.Timestamp.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsXRayTicketObservabilityRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsXRayTicketObservabilityRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsXRayTicketObservabilityRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
