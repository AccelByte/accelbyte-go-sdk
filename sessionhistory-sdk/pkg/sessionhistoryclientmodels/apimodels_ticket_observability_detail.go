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

// ApimodelsTicketObservabilityDetail Apimodels ticket observability detail
//
// swagger:model Apimodels ticket observability detail.
type ApimodelsTicketObservabilityDetail struct {

	// action
	// Required: true
	Action *string `json:"action"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// expiredat
	// Required: true
	// Format: date-time
	ExpiredAt strfmt.DateTime `json:"expiredAt"`

	// game_mode
	// Required: true
	GameMode *string `json:"game_mode"`

	// history
	History []*ApimodelsTicketObservabilityHistory `json:"history,omitempty"`

	// lastdata
	LastData *ModelsTicketObservability `json:"lastData,omitempty"`

	// matchid
	// Required: true
	MatchID *string `json:"matchId"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// party_id
	// Required: true
	PartyID *string `json:"party_id"`

	// regions
	// Required: true
	Regions *string `json:"regions"`

	// remainingplayersperticket
	// Format: int32
	RemainingPlayersPerTicket []int32 `json:"remainingPlayersPerTicket,omitempty"`

	// remainingtickets
	// Required: true
	// Format: int32
	RemainingTickets *int32 `json:"remainingTickets"`

	// requestedregion
	RequestedRegion []string `json:"requestedRegion,omitempty"`

	// ticket
	Ticket *ModelsTicket `json:"ticket,omitempty"`

	// ticket_id
	// Required: true
	TicketID *string `json:"ticket_id"`

	// timetomatchsec
	// Format: double
	TimeToMatchSec float64 `json:"timeToMatchSec,omitempty"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// userids
	UserIDs []string `json:"userIDs,omitempty"`
}

// Validate validates this Apimodels ticket observability detail
func (m *ApimodelsTicketObservabilityDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpiredAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameMode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartyID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRemainingTickets(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsTicketObservabilityDetail) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityDetail) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityDetail) validateExpiredAt(formats strfmt.Registry) error {

	if err := validate.Required("expiredAt", "body", strfmt.DateTime(m.ExpiredAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("expiredAt", "body", "date-time", m.ExpiredAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityDetail) validateGameMode(formats strfmt.Registry) error {

	if err := validate.Required("game_mode", "body", m.GameMode); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityDetail) validateMatchID(formats strfmt.Registry) error {

	if err := validate.Required("matchId", "body", m.MatchID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityDetail) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityDetail) validatePartyID(formats strfmt.Registry) error {

	if err := validate.Required("party_id", "body", m.PartyID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityDetail) validateRegions(formats strfmt.Registry) error {

	if err := validate.Required("regions", "body", m.Regions); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityDetail) validateRemainingTickets(formats strfmt.Registry) error {

	if err := validate.Required("remainingTickets", "body", m.RemainingTickets); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityDetail) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticket_id", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityDetail) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsTicketObservabilityDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsTicketObservabilityDetail) UnmarshalBinary(b []byte) error {
	var res ApimodelsTicketObservabilityDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
