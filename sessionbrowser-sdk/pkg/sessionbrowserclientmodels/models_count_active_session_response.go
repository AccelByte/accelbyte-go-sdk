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

// ModelsCountActiveSessionResponse Models count active session response
//
// swagger:model Models count active session response.
type ModelsCountActiveSessionResponse struct {

	// custom_game
	// Required: true
	// Format: int64
	CustomGame *int64 `json:"custom_game"`

	// matchmaking_game
	// Required: true
	// Format: int64
	MatchmakingGame *int64 `json:"matchmaking_game"`

	// total
	// Required: true
	// Format: int64
	Total *int64 `json:"total"`
}

// Validate validates this Models count active session response
func (m *ModelsCountActiveSessionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCustomGame(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchmakingGame(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotal(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCountActiveSessionResponse) validateCustomGame(formats strfmt.Registry) error {

	if err := validate.Required("custom_game", "body", m.CustomGame); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCountActiveSessionResponse) validateMatchmakingGame(formats strfmt.Registry) error {

	if err := validate.Required("matchmaking_game", "body", m.MatchmakingGame); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCountActiveSessionResponse) validateTotal(formats strfmt.Registry) error {

	if err := validate.Required("total", "body", m.Total); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCountActiveSessionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCountActiveSessionResponse) UnmarshalBinary(b []byte) error {
	var res ModelsCountActiveSessionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
