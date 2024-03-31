// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMatchmakingResult Models matchmaking result
//
// swagger:model Models matchmaking result.
type ModelsMatchmakingResult struct {

	// channel
	Channel string `json:"channel,omitempty"`

	// client_version
	ClientVersion string `json:"client_version,omitempty"`

	// deployment
	Deployment string `json:"deployment,omitempty"`

	// error_code
	// Format: int32
	ErrorCode int32 `json:"error_code,omitempty"`

	// error_message
	ErrorMessage string `json:"error_message,omitempty"`

	// game_mode
	GameMode string `json:"game_mode,omitempty"`

	// joinable
	Joinable *bool `json:"joinable"`

	// match_id
	// Required: true
	MatchID string `json:"match_id"`

	// match_session_id
	MatchSessionID string `json:"match_session_id,omitempty"`

	// matching_allies
	// Required: true
	MatchingAllies []*ModelsMatchingAlly `json:"matching_allies"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// party_attributes
	PartyAttributes interface{} `json:"party_attributes,omitempty"`

	// party_id
	PartyID *string `json:"party_id,omitempty"`

	// queued_at
	// Required: true
	// Format: int64
	QueuedAt int64 `json:"queued_at"`

	// region
	Region string `json:"region,omitempty"`

	// server_name
	ServerName string `json:"server_name,omitempty"`

	// status
	Status string `json:"status,omitempty"`

	// ticket_id
	// Required: true
	TicketID string `json:"ticket_id"`

	// updated_at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updated_at"`
}

// Validate validates this Models matchmaking result
func (m *ModelsMatchmakingResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatchID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchingAllies(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQueuedAt(formats); err != nil {
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

func (m *ModelsMatchmakingResult) validateMatchID(formats strfmt.Registry) error {

	if err := validate.Required("match_id", "body", m.MatchID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchmakingResult) validateMatchingAllies(formats strfmt.Registry) error {

	if err := validate.Required("matching_allies", "body", m.MatchingAllies); err != nil {
		return err
	}

	for i := 0; i < len(m.MatchingAllies); i++ {
		if swag.IsZero(m.MatchingAllies[i]) { // not required
			continue
		}

		if m.MatchingAllies[i] != nil {
			if err := m.MatchingAllies[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("matching_allies" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsMatchmakingResult) validateQueuedAt(formats strfmt.Registry) error {

	if err := validate.Required("queued_at", "body", m.QueuedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchmakingResult) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticket_id", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchmakingResult) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updated_at", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updated_at", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMatchmakingResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMatchmakingResult) UnmarshalBinary(b []byte) error {
	var res ModelsMatchmakingResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
