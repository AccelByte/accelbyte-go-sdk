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

// ServiceGetSessionHistoryDetailedResponseItem Service get session history detailed response item
//
// swagger:model Service get session history detailed response item.
type ServiceGetSessionHistoryDetailedResponseItem struct {

	// _id
	// Required: true
	ID string `json:"_id"`

	// channel
	// Required: true
	Channel string `json:"channel"`

	// client_version
	// Required: true
	ClientVersion string `json:"client_version"`

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// event_description
	// Required: true
	EventDescription *string `json:"event_description"`

	// event_name
	// Required: true
	EventName string `json:"event_name"`

	// game_mode
	// Required: true
	GameMode string `json:"game_mode"`

	// joinable
	// Required: true
	Joinable bool `json:"joinable"`

	// match_id
	// Required: true
	MatchID string `json:"match_id"`

	// matching_allies
	// Required: true
	MatchingAllies []*ModelsMatchingAlly `json:"matching_allies"`

	// namespace
	// Required: true
	Namespace string `json:"namespace"`

	// party_id
	PartyID string `json:"party_id,omitempty"`

	// region
	// Required: true
	Region string `json:"region"`

	// server_name
	// Required: true
	ServerName string `json:"server_name"`

	// status
	// Required: true
	Status string `json:"status"`
}

// Validate validates this Service get session history detailed response item
func (m *ServiceGetSessionHistoryDetailedResponseItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateChannel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameMode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJoinable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchingAllies(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateID(formats strfmt.Registry) error {

	if err := validate.Required("_id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateChannel(formats strfmt.Registry) error {

	if err := validate.Required("channel", "body", m.Channel); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateClientVersion(formats strfmt.Registry) error {

	if err := validate.Required("client_version", "body", m.ClientVersion); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateEventDescription(formats strfmt.Registry) error {

	if err := validate.Required("event_description", "body", m.EventDescription); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateEventName(formats strfmt.Registry) error {

	if err := validate.Required("event_name", "body", m.EventName); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateGameMode(formats strfmt.Registry) error {

	if err := validate.Required("game_mode", "body", m.GameMode); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateJoinable(formats strfmt.Registry) error {

	if err := validate.Required("joinable", "body", m.Joinable); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateMatchID(formats strfmt.Registry) error {

	if err := validate.Required("match_id", "body", m.MatchID); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateMatchingAllies(formats strfmt.Registry) error {

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

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateServerName(formats strfmt.Registry) error {

	if err := validate.Required("server_name", "body", m.ServerName); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistoryDetailedResponseItem) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ServiceGetSessionHistoryDetailedResponseItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ServiceGetSessionHistoryDetailedResponseItem) UnmarshalBinary(b []byte) error {
	var res ServiceGetSessionHistoryDetailedResponseItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
