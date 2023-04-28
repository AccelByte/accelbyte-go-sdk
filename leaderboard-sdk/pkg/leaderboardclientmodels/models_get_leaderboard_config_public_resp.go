// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboardclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGetLeaderboardConfigPublicResp Models get leaderboard config public resp
//
// swagger:model Models get leaderboard config public resp.
type ModelsGetLeaderboardConfigPublicResp struct {

	// iconurl
	// Required: true
	IconURL *string `json:"iconURL"`

	// leaderboardcode
	// Required: true
	LeaderboardCode *string `json:"leaderboardCode"`

	// name
	// Required: true
	Name *string `json:"name"`

	// statcode
	// Required: true
	StatCode *string `json:"statCode"`
}

// Validate validates this Models get leaderboard config public resp
func (m *ModelsGetLeaderboardConfigPublicResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIconURL(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLeaderboardCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetLeaderboardConfigPublicResp) validateIconURL(formats strfmt.Registry) error {

	if err := validate.Required("iconURL", "body", m.IconURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigPublicResp) validateLeaderboardCode(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCode", "body", m.LeaderboardCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigPublicResp) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigPublicResp) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetLeaderboardConfigPublicResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetLeaderboardConfigPublicResp) UnmarshalBinary(b []byte) error {
	var res ModelsGetLeaderboardConfigPublicResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
