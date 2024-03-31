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

// ModelsTicketData Models ticket data
//
// swagger:model Models ticket data.
type ModelsTicketData struct {

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

	// partyid
	// Required: true
	PartyID *string `json:"partyID"`

	// podname
	// Required: true
	PodName *string `json:"podName"`

	// remainingplayersperticket
	// Format: int32
	RemainingPlayersPerTicket []int32 `json:"remainingPlayersPerTicket,omitempty"`

	// remainingtickets
	// Format: int32
	RemainingTickets int32 `json:"remainingTickets,omitempty"`

	// session
	Session *ModelsMatchmakingResult `json:"session,omitempty"`

	// sessiontickid
	// Required: true
	SessionTickID *string `json:"sessionTickID"`

	// tickid
	// Required: true
	// Format: int64
	TickID *int64 `json:"tickID"`

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

// Validate validates this Models ticket data
func (m *ModelsTicketData) Validate(formats strfmt.Registry) error {
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
	if err := m.validatePartyID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePodName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTickID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTickID(formats); err != nil {
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

func (m *ModelsTicketData) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTicketData) validateGameMode(formats strfmt.Registry) error {

	if err := validate.Required("gameMode", "body", m.GameMode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTicketData) validateIsBackfillMatch(formats strfmt.Registry) error {

	if err := validate.Required("isBackfillMatch", "body", m.IsBackfillMatch); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTicketData) validateIsRuleSetFlexed(formats strfmt.Registry) error {

	if err := validate.Required("isRuleSetFlexed", "body", m.IsRuleSetFlexed); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTicketData) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTicketData) validatePartyID(formats strfmt.Registry) error {

	if err := validate.Required("partyID", "body", m.PartyID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTicketData) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("podName", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTicketData) validateSessionTickID(formats strfmt.Registry) error {

	if err := validate.Required("sessionTickID", "body", m.SessionTickID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTicketData) validateTickID(formats strfmt.Registry) error {

	if err := validate.Required("tickID", "body", m.TickID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTicketData) validateTimestamp(formats strfmt.Registry) error {

	if err := validate.Required("timestamp", "body", strfmt.DateTime(m.Timestamp)); err != nil {
		return err
	}

	if err := validate.FormatOf("timestamp", "body", "date-time", m.Timestamp.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsTicketData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsTicketData) UnmarshalBinary(b []byte) error {
	var res ModelsTicketData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
