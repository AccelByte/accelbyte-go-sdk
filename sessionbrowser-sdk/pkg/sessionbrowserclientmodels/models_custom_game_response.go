// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionbrowserclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCustomGameResponse Models custom game response
//
// swagger:model Models custom game response.
type ModelsCustomGameResponse struct {

	// all_players
	AllPlayers []string `json:"all_players,omitempty"`

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// game_session_setting
	GameSessionSetting *ModelsGameSessionSetting `json:"game_session_setting,omitempty"`

	// joinable
	// Required: true
	Joinable *bool `json:"joinable"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// players
	Players []string `json:"players,omitempty"`

	// server
	Server *ModelsServer `json:"server,omitempty"`

	// session_id
	// Required: true
	SessionID *string `json:"session_id"`

	// session_type
	// Required: true
	SessionType *string `json:"session_type"`

	// spectators
	Spectators []string `json:"spectators,omitempty"`
}

// Validate validates this Models custom game response
func (m *ModelsCustomGameResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJoinable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCustomGameResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomGameResponse) validateJoinable(formats strfmt.Registry) error {

	if err := validate.Required("joinable", "body", m.Joinable); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomGameResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomGameResponse) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("session_id", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomGameResponse) validateSessionType(formats strfmt.Registry) error {

	if err := validate.Required("session_type", "body", m.SessionType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCustomGameResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCustomGameResponse) UnmarshalBinary(b []byte) error {
	var res ModelsCustomGameResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
