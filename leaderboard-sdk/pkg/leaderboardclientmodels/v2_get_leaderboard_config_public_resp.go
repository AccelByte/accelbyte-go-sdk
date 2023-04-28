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

// V2GetLeaderboardConfigPublicResp V2 get leaderboard config public resp
//
// swagger:model V2 get leaderboard config public resp.
type V2GetLeaderboardConfigPublicResp struct {

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

// Validate validates this V2 get leaderboard config public resp
func (m *V2GetLeaderboardConfigPublicResp) Validate(formats strfmt.Registry) error {
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

func (m *V2GetLeaderboardConfigPublicResp) validateIconURL(formats strfmt.Registry) error {

	if err := validate.Required("iconURL", "body", m.IconURL); err != nil {
		return err
	}

	return nil
}

func (m *V2GetLeaderboardConfigPublicResp) validateLeaderboardCode(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCode", "body", m.LeaderboardCode); err != nil {
		return err
	}

	return nil
}

func (m *V2GetLeaderboardConfigPublicResp) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *V2GetLeaderboardConfigPublicResp) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *V2GetLeaderboardConfigPublicResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *V2GetLeaderboardConfigPublicResp) UnmarshalBinary(b []byte) error {
	var res V2GetLeaderboardConfigPublicResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
