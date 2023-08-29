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

// ModelsMockMatch Models mock match
//
// swagger:model Models mock match.
type ModelsMockMatch struct {

	// channel
	// Required: true
	Channel string `json:"channel"`

	// client_version
	// Required: true
	ClientVersion string `json:"client_version"`

	// deployment
	// Required: true
	Deployment string `json:"deployment"`

	// error_code
	// Required: true
	// Format: int32
	ErrorCode *int32 `json:"error_code"`

	// error_message
	// Required: true
	ErrorMessage *string `json:"error_message"`

	// game_mode
	// Required: true
	GameMode string `json:"game_mode"`

	// is_mock
	// Required: true
	IsMock *string `json:"is_mock"`

	// joinable
	Joinable *bool `json:"joinable"`

	// match_id
	// Required: true
	MatchID string `json:"match_id"`

	// matching_allies
	// Required: true
	MatchingAllies []*ModelsMatchingAlly `json:"matching_allies"`

	// mmr_distance
	// Required: true
	// Format: int32
	MmrDistance *int32 `json:"mmr_distance"`

	// namespace
	// Required: true
	Namespace string `json:"namespace"`

	// party_attributes
	// Required: true
	PartyAttributes interface{} `json:"party_attributes"`

	// party_id
	PartyID *string `json:"party_id,omitempty"`

	// queued_at
	// Required: true
	// Format: int64
	QueuedAt int64 `json:"queued_at"`

	// region
	// Required: true
	Region string `json:"region"`

	// server_name
	// Required: true
	ServerName string `json:"server_name"`

	// status
	// Required: true
	Status string `json:"status"`

	// ticket_id
	// Required: true
	TicketID string `json:"ticket_id"`

	// ticket_ids
	TicketIds []string `json:"ticket_ids,omitempty"`

	// time_to_match_seconds
	// Required: true
	// Format: int64
	TimeToMatchSeconds *int64 `json:"time_to_match_seconds"`

	// updated_at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updated_at"`
}

// Validate validates this Models mock match
func (m *ModelsMockMatch) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChannel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeployment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateErrorCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateErrorMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameMode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsMock(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchingAllies(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMmrDistance(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQueuedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServerName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimeToMatchSeconds(formats); err != nil {
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

func (m *ModelsMockMatch) validateChannel(formats strfmt.Registry) error {

	if err := validate.Required("channel", "body", m.Channel); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateClientVersion(formats strfmt.Registry) error {

	if err := validate.Required("client_version", "body", m.ClientVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateErrorCode(formats strfmt.Registry) error {

	if err := validate.Required("error_code", "body", m.ErrorCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateErrorMessage(formats strfmt.Registry) error {

	if err := validate.Required("error_message", "body", m.ErrorMessage); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateGameMode(formats strfmt.Registry) error {

	if err := validate.Required("game_mode", "body", m.GameMode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateIsMock(formats strfmt.Registry) error {

	if err := validate.Required("is_mock", "body", m.IsMock); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateMatchID(formats strfmt.Registry) error {

	if err := validate.Required("match_id", "body", m.MatchID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateMatchingAllies(formats strfmt.Registry) error {

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

func (m *ModelsMockMatch) validateMmrDistance(formats strfmt.Registry) error {

	if err := validate.Required("mmr_distance", "body", m.MmrDistance); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateQueuedAt(formats strfmt.Registry) error {

	if err := validate.Required("queued_at", "body", m.QueuedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateServerName(formats strfmt.Registry) error {

	if err := validate.Required("server_name", "body", m.ServerName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticket_id", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateTimeToMatchSeconds(formats strfmt.Registry) error {

	if err := validate.Required("time_to_match_seconds", "body", m.TimeToMatchSeconds); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMockMatch) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updated_at", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updated_at", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMockMatch) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMockMatch) UnmarshalBinary(b []byte) error {
	var res ModelsMockMatch
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
