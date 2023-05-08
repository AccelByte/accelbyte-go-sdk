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

// ModelsCreateSessionRequest Models create session request
//
// swagger:model Models create session request.
type ModelsCreateSessionRequest struct {

	// game_session_setting
	// Required: true
	GameSessionSetting *ModelsGameSessionSetting `json:"game_session_setting"`

	// game_version
	// Required: true
	GameVersion *string `json:"game_version"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// session_type
	// Required: true
	SessionType *string `json:"session_type"`

	// username
	// Required: true
	Username *string `json:"username"`
}

// Validate validates this Models create session request
func (m *ModelsCreateSessionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGameSessionSetting(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionType(formats); err != nil {
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

func (m *ModelsCreateSessionRequest) validateGameSessionSetting(formats strfmt.Registry) error {

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

func (m *ModelsCreateSessionRequest) validateGameVersion(formats strfmt.Registry) error {

	if err := validate.Required("game_version", "body", m.GameVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateSessionRequest) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateSessionRequest) validateSessionType(formats strfmt.Registry) error {

	if err := validate.Required("session_type", "body", m.SessionType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateSessionRequest) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateSessionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateSessionRequest) UnmarshalBinary(b []byte) error {
	var res ModelsCreateSessionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
