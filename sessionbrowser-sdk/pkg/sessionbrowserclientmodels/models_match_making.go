// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionbrowserclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMatchMaking Models match making
//
// swagger:model Models match making.
type ModelsMatchMaking struct {

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

	// deployment
	// Required: true
	Deployment string `json:"deployment"`

	// event
	// Required: true
	Event *string `json:"event"`

	// game_mode
	// Required: true
	GameMode string `json:"game_mode"`

	// joinable
	Joinable *bool `json:"joinable"`

	// match_id
	// Required: true
	MatchID string `json:"match_id"`

	// matching_allies
	// Required: true
	MatchingAllies []*ModelsMatchingAlly `json:"matching_allies"`

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

	// sub_game_mode
	// Required: true
	SubGameMode []string `json:"sub_game_mode"`
}

// Validate validates this Models match making
func (m *ModelsMatchMaking) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChannel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeployment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEvent(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameMode(formats); err != nil {
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
	if err := m.validateSubGameMode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMatchMaking) validateChannel(formats strfmt.Registry) error {

	if err := validate.Required("channel", "body", m.Channel); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateClientVersion(formats strfmt.Registry) error {

	if err := validate.Required("client_version", "body", m.ClientVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateEvent(formats strfmt.Registry) error {

	if err := validate.Required("event", "body", m.Event); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateGameMode(formats strfmt.Registry) error {

	if err := validate.Required("game_mode", "body", m.GameMode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateMatchID(formats strfmt.Registry) error {

	if err := validate.Required("match_id", "body", m.MatchID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateMatchingAllies(formats strfmt.Registry) error {

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

func (m *ModelsMatchMaking) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateQueuedAt(formats strfmt.Registry) error {

	if err := validate.Required("queued_at", "body", m.QueuedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateServerName(formats strfmt.Registry) error {

	if err := validate.Required("server_name", "body", m.ServerName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchMaking) validateSubGameMode(formats strfmt.Registry) error {

	if err := validate.Required("sub_game_mode", "body", m.SubGameMode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMatchMaking) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMatchMaking) UnmarshalBinary(b []byte) error {
	var res ModelsMatchMaking
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
