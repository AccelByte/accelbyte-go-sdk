// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboardclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUserLeaderboardRankingV3 Models user leaderboard ranking V3
//
// swagger:model Models user leaderboard ranking V3.
type ModelsUserLeaderboardRankingV3 struct {

	// alltime
	AllTime *ModelsUserRankingResponseDetailV3 `json:"allTime,omitempty"`

	// cycles
	// Required: true
	Cycles []*ModelsUserCycleRankingResponseDetail `json:"cycles"`

	// leaderboardcode
	// Required: true
	LeaderboardCode *string `json:"leaderboardCode"`

	// leaderboardname
	// Required: true
	LeaderboardName *string `json:"leaderboardName"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models user leaderboard ranking V3
func (m *ModelsUserLeaderboardRankingV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCycles(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLeaderboardCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLeaderboardName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUserLeaderboardRankingV3) validateCycles(formats strfmt.Registry) error {

	if err := validate.Required("cycles", "body", m.Cycles); err != nil {
		return err
	}

	for i := 0; i < len(m.Cycles); i++ {
		if swag.IsZero(m.Cycles[i]) { // not required
			continue
		}

		if m.Cycles[i] != nil {
			if err := m.Cycles[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("cycles" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsUserLeaderboardRankingV3) validateLeaderboardCode(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCode", "body", m.LeaderboardCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserLeaderboardRankingV3) validateLeaderboardName(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardName", "body", m.LeaderboardName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserLeaderboardRankingV3) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserLeaderboardRankingV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserLeaderboardRankingV3) UnmarshalBinary(b []byte) error {
	var res ModelsUserLeaderboardRankingV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
