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

// ModelsGetLeaderboardConfigPublicRespV3 Models get leaderboard config public resp V3
//
// swagger:model Models get leaderboard config public resp V3.
type ModelsGetLeaderboardConfigPublicRespV3 struct {

	// alltime
	// Required: true
	AllTime *bool `json:"allTime"`

	// cycleids
	// Required: true
	CycleIds []string `json:"cycleIds"`

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

// Validate validates this Models get leaderboard config public resp V3
func (m *ModelsGetLeaderboardConfigPublicRespV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCycleIds(formats); err != nil {
		res = append(res, err)
	}
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

func (m *ModelsGetLeaderboardConfigPublicRespV3) validateAllTime(formats strfmt.Registry) error {

	if err := validate.Required("allTime", "body", m.AllTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigPublicRespV3) validateCycleIds(formats strfmt.Registry) error {

	if err := validate.Required("cycleIds", "body", m.CycleIds); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigPublicRespV3) validateIconURL(formats strfmt.Registry) error {

	if err := validate.Required("iconURL", "body", m.IconURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigPublicRespV3) validateLeaderboardCode(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCode", "body", m.LeaderboardCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigPublicRespV3) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigPublicRespV3) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetLeaderboardConfigPublicRespV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetLeaderboardConfigPublicRespV3) UnmarshalBinary(b []byte) error {
	var res ModelsGetLeaderboardConfigPublicRespV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
