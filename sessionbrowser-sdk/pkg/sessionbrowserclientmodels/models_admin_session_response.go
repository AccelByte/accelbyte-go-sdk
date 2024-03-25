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

// ModelsAdminSessionResponse Models admin session response
//
// swagger:model Models admin session response.
type ModelsAdminSessionResponse struct {

	// all_players
	// Required: true
	AllPlayers []string `json:"all_players"`

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// game_session_setting
	GameSessionSetting *ModelsGameSessionSetting `json:"game_session_setting,omitempty"`

	// game_version
	// Required: true
	GameVersion *string `json:"game_version"`

	// joinable
	// Required: true
	Joinable *bool `json:"joinable"`

	// match
	Match *ModelsMatchMaking `json:"match,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// players
	// Required: true
	Players []string `json:"players"`

	// server
	// Required: true
	Server *ModelsServer `json:"server"`

	// session_id
	// Required: true
	SessionID *string `json:"session_id"`

	// session_type
	// Required: true
	SessionType *string `json:"session_type"`

	// spectators
	// Required: true
	Spectators []string `json:"spectators"`

	// user_id
	// Required: true
	UserID *string `json:"user_id"`

	// username
	// Required: true
	Username *string `json:"username"`
}

// Validate validates this Models admin session response
func (m *ModelsAdminSessionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllPlayers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJoinable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlayers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServer(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSpectators(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUsername(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminSessionResponse) validateAllPlayers(formats strfmt.Registry) error {

	if err := validate.Required("all_players", "body", m.AllPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminSessionResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminSessionResponse) validateGameVersion(formats strfmt.Registry) error {

	if err := validate.Required("game_version", "body", m.GameVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminSessionResponse) validateJoinable(formats strfmt.Registry) error {

	if err := validate.Required("joinable", "body", m.Joinable); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminSessionResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminSessionResponse) validatePlayers(formats strfmt.Registry) error {

	if err := validate.Required("players", "body", m.Players); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminSessionResponse) validateServer(formats strfmt.Registry) error {

	if err := validate.Required("server", "body", m.Server); err != nil {
		return err
	}

	if m.Server != nil {
		if err := m.Server.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("server")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsAdminSessionResponse) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("session_id", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminSessionResponse) validateSessionType(formats strfmt.Registry) error {

	if err := validate.Required("session_type", "body", m.SessionType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminSessionResponse) validateSpectators(formats strfmt.Registry) error {

	if err := validate.Required("spectators", "body", m.Spectators); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminSessionResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminSessionResponse) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminSessionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminSessionResponse) UnmarshalBinary(b []byte) error {
	var res ModelsAdminSessionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
