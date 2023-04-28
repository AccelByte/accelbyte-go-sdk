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

// ModelsUpdateSessionRequest Models update session request
//
// swagger:model Models update session request.
type ModelsUpdateSessionRequest struct {

	// game_max_player
	// Required: true
	// Format: int32
	GameMaxPlayer *int32 `json:"game_max_player"`
}

// Validate validates this Models update session request
func (m *ModelsUpdateSessionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGameMaxPlayer(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateSessionRequest) validateGameMaxPlayer(formats strfmt.Registry) error {

	if err := validate.Required("game_max_player", "body", m.GameMaxPlayer); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateSessionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateSessionRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateSessionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
