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

// ModelsGameSessionSetting Models game session setting
//
// swagger:model Models game session setting.
type ModelsGameSessionSetting struct {

	// allow_join_in_progress
	// Required: true
	AllowJoinInProgress *bool `json:"allow_join_in_progress"`

	// current_internal_player
	// Required: true
	// Format: int32
	CurrentInternalPlayer *int32 `json:"current_internal_player"`

	// current_player
	// Required: true
	// Format: int32
	CurrentPlayer *int32 `json:"current_player"`

	// map_name
	// Required: true
	MapName *string `json:"map_name"`

	// max_internal_player
	// Required: true
	// Format: int32
	MaxInternalPlayer *int32 `json:"max_internal_player"`

	// max_player
	// Required: true
	// Format: int32
	MaxPlayer *int32 `json:"max_player"`

	// mode
	// Required: true
	Mode *string `json:"mode"`

	// num_bot
	// Required: true
	// Format: int32
	NumBot *int32 `json:"num_bot"`

	// password
	// Required: true
	Password *string `json:"password"`

	// settings
	// Required: true
	Settings interface{} `json:"settings"`
}

// Validate validates this Models game session setting
func (m *ModelsGameSessionSetting) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllowJoinInProgress(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrentInternalPlayer(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrentPlayer(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMapName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxInternalPlayer(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxPlayer(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNumBot(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassword(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGameSessionSetting) validateAllowJoinInProgress(formats strfmt.Registry) error {

	if err := validate.Required("allow_join_in_progress", "body", m.AllowJoinInProgress); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSessionSetting) validateCurrentInternalPlayer(formats strfmt.Registry) error {

	if err := validate.Required("current_internal_player", "body", m.CurrentInternalPlayer); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSessionSetting) validateCurrentPlayer(formats strfmt.Registry) error {

	if err := validate.Required("current_player", "body", m.CurrentPlayer); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSessionSetting) validateMapName(formats strfmt.Registry) error {

	if err := validate.Required("map_name", "body", m.MapName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSessionSetting) validateMaxInternalPlayer(formats strfmt.Registry) error {

	if err := validate.Required("max_internal_player", "body", m.MaxInternalPlayer); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSessionSetting) validateMaxPlayer(formats strfmt.Registry) error {

	if err := validate.Required("max_player", "body", m.MaxPlayer); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSessionSetting) validateMode(formats strfmt.Registry) error {

	if err := validate.Required("mode", "body", m.Mode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSessionSetting) validateNumBot(formats strfmt.Registry) error {

	if err := validate.Required("num_bot", "body", m.NumBot); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSessionSetting) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGameSessionSetting) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGameSessionSetting) UnmarshalBinary(b []byte) error {
	var res ModelsGameSessionSetting
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
