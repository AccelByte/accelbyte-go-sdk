// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMockTicket Models mock ticket
//
// swagger:model Models mock ticket.
type ModelsMockTicket struct {

	// additional_criteria
	// Required: true
	AdditionalCriteria interface{} `json:"additional_criteria"`

	// channel
	// Required: true
	Channel *string `json:"channel"`

	// created_at
	// Required: true
	// Format: int64
	CreatedAt *int64 `json:"created_at"`

	// first_ticket_created_at
	// Required: true
	// Format: int64
	FirstTicketCreatedAt *int64 `json:"first_ticket_created_at"`

	// is_mock
	// Required: true
	IsMock *string `json:"is_mock"`

	// is_sampled
	// Required: true
	IsSampled *bool `json:"is_sampled"`

	// latency_map
	// Required: true
	LatencyMap map[string]int64 `json:"latency_map"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// party_attributes
	// Required: true
	PartyAttributes interface{} `json:"party_attributes"`

	// party_id
	// Required: true
	PartyID *string `json:"party_id"`

	// party_leader_id
	// Required: true
	PartyLeaderID *string `json:"party_leader_id"`

	// party_members
	// Required: true
	PartyMembers []*ModelsPartyMember `json:"party_members"`

	// priority
	// Required: true
	// Format: int32
	Priority *int32 `json:"priority"`

	// sampling_properties
	// Required: true
	SamplingProperties [][]string `json:"sampling_properties"`

	// sorted_latency
	// Required: true
	SortedLatency []*ModelsRegion `json:"sorted_latency"`

	// status
	// Required: true
	Status *string `json:"status"`

	// ticket_id
	// Required: true
	TicketID *string `json:"ticket_id"`
}

// Validate validates this Models mock ticket
func (m *ModelsMockTicket) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChannel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFirstTicketCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsMock(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsSampled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartyID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartyLeaderID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartyMembers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePriority(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSamplingProperties(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSortedLatency(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMockTicket) validateChannel(formats strfmt.Registry) error {

	if err := validate.Required("channel", "body", m.Channel); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockTicket) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockTicket) validateFirstTicketCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("first_ticket_created_at", "body", m.FirstTicketCreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockTicket) validateIsMock(formats strfmt.Registry) error {

	if err := validate.Required("is_mock", "body", m.IsMock); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockTicket) validateIsSampled(formats strfmt.Registry) error {

	if err := validate.Required("is_sampled", "body", m.IsSampled); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockTicket) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockTicket) validatePartyID(formats strfmt.Registry) error {

	if err := validate.Required("party_id", "body", m.PartyID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockTicket) validatePartyLeaderID(formats strfmt.Registry) error {

	if err := validate.Required("party_leader_id", "body", m.PartyLeaderID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockTicket) validatePartyMembers(formats strfmt.Registry) error {

	if err := validate.Required("party_members", "body", m.PartyMembers); err != nil {
		return err
	}

	for i := 0; i < len(m.PartyMembers); i++ {
		if swag.IsZero(m.PartyMembers[i]) { // not required
			continue
		}

		if m.PartyMembers[i] != nil {
			if err := m.PartyMembers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("party_members" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsMockTicket) validatePriority(formats strfmt.Registry) error {

	if err := validate.Required("priority", "body", m.Priority); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockTicket) validateSamplingProperties(formats strfmt.Registry) error {

	if err := validate.Required("sampling_properties", "body", m.SamplingProperties); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockTicket) validateSortedLatency(formats strfmt.Registry) error {

	if err := validate.Required("sorted_latency", "body", m.SortedLatency); err != nil {
		return err
	}

	for i := 0; i < len(m.SortedLatency); i++ {
		if swag.IsZero(m.SortedLatency[i]) { // not required
			continue
		}

		if m.SortedLatency[i] != nil {
			if err := m.SortedLatency[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("sorted_latency" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsMockTicket) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockTicket) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticket_id", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMockTicket) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMockTicket) UnmarshalBinary(b []byte) error {
	var res ModelsMockTicket
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
