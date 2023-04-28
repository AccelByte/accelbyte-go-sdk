// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMatchAddUserIntoSessionRequest Models match add user into session request
//
// swagger:model Models match add user into session request.
type ModelsMatchAddUserIntoSessionRequest struct {

	// blocked_players
	BlockedPlayers []string `json:"blocked_players,omitempty"`

	// party_id
	PartyID *string `json:"party_id,omitempty"`

	// user_id
	// Required: true
	UserID string `json:"user_id"`
}

// Validate validates this Models match add user into session request
func (m *ModelsMatchAddUserIntoSessionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMatchAddUserIntoSessionRequest) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMatchAddUserIntoSessionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMatchAddUserIntoSessionRequest) UnmarshalBinary(b []byte) error {
	var res ModelsMatchAddUserIntoSessionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
