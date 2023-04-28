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

// ModelsSessionResponse Models session response
//
// swagger:model Models session response.
type ModelsSessionResponse struct {

	// all_players
	// Required: true
	AllPlayers []string `json:"all_players"`

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// game_session_setting
	// Required: true
	GameSessionSetting *ModelsGameSessionSetting `json:"game_session_setting"`

	// game_version
	// Required: true
	GameVersion *string `json:"game_version"`

	// joinable
	// Required: true
	Joinable *bool `json:"joinable"`

	// match
	// Required: true
	Match *ModelsMatchMaking `json:"match"`

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

// Validate validates this Models session response
func (m *ModelsSessionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllPlayers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameSessionSetting(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJoinable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatch(formats); err != nil {
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

func (m *ModelsSessionResponse) validateAllPlayers(formats strfmt.Registry) error {

	if err := validate.Required("all_players", "body", m.AllPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionResponse) validateGameSessionSetting(formats strfmt.Registry) error {

	if err := validate.Required("game_session_setting", "body", m.GameSessionSetting); err != nil {
		return err
	}

	if m.GameSessionSetting != nil {
		if err := m.GameSessionSetting.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("game_session_setting")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsSessionResponse) validateGameVersion(formats strfmt.Registry) error {

	if err := validate.Required("game_version", "body", m.GameVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionResponse) validateJoinable(formats strfmt.Registry) error {

	if err := validate.Required("joinable", "body", m.Joinable); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionResponse) validateMatch(formats strfmt.Registry) error {

	if err := validate.Required("match", "body", m.Match); err != nil {
		return err
	}

	if m.Match != nil {
		if err := m.Match.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("match")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsSessionResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionResponse) validatePlayers(formats strfmt.Registry) error {

	if err := validate.Required("players", "body", m.Players); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionResponse) validateServer(formats strfmt.Registry) error {

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

func (m *ModelsSessionResponse) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("session_id", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionResponse) validateSessionType(formats strfmt.Registry) error {

	if err := validate.Required("session_type", "body", m.SessionType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionResponse) validateSpectators(formats strfmt.Registry) error {

	if err := validate.Required("spectators", "body", m.Spectators); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSessionResponse) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSessionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSessionResponse) UnmarshalBinary(b []byte) error {
	var res ModelsSessionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
