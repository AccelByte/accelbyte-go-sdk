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

// ModelsLeaderboardConfigReqV3 Models leaderboard config req V3
//
// swagger:model Models leaderboard config req V3.
type ModelsLeaderboardConfigReqV3 struct {

	// alltime
	// Required: true
	AllTime *bool `json:"allTime"`

	// cycleids
	CycleIds []string `json:"cycleIds,omitempty"`

	// descending
	// Required: true
	Descending *bool `json:"descending"`

	// description
	Description string `json:"description,omitempty"`

	// iconurl
	IconURL string `json:"iconURL,omitempty"`

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

// Validate validates this Models leaderboard config req V3
func (m *ModelsLeaderboardConfigReqV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescending(formats); err != nil {
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

func (m *ModelsLeaderboardConfigReqV3) validateAllTime(formats strfmt.Registry) error {

	if err := validate.Required("allTime", "body", m.AllTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsLeaderboardConfigReqV3) validateDescending(formats strfmt.Registry) error {

	if err := validate.Required("descending", "body", m.Descending); err != nil {
		return err
	}

	return nil
}

func (m *ModelsLeaderboardConfigReqV3) validateLeaderboardCode(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCode", "body", m.LeaderboardCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsLeaderboardConfigReqV3) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsLeaderboardConfigReqV3) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsLeaderboardConfigReqV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsLeaderboardConfigReqV3) UnmarshalBinary(b []byte) error {
	var res ModelsLeaderboardConfigReqV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
