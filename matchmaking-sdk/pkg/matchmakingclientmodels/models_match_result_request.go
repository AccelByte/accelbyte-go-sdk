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

// ModelsMatchResultRequest Models match result request
//
// swagger:model Models match result request.
type ModelsMatchResultRequest struct {

	// match_id
	// Required: true
	MatchID string `json:"match_id"`

	// players
	// Required: true
	Players []*ModelsPlayerResultRequest `json:"players"`
}

// Validate validates this Models match result request
func (m *ModelsMatchResultRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatchID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlayers(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMatchResultRequest) validateMatchID(formats strfmt.Registry) error {

	if err := validate.Required("match_id", "body", m.MatchID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMatchResultRequest) validatePlayers(formats strfmt.Registry) error {

	if err := validate.Required("players", "body", m.Players); err != nil {
		return err
	}

	for i := 0; i < len(m.Players); i++ {
		if swag.IsZero(m.Players[i]) { // not required
			continue
		}

		if m.Players[i] != nil {
			if err := m.Players[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("players" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMatchResultRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMatchResultRequest) UnmarshalBinary(b []byte) error {
	var res ModelsMatchResultRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
