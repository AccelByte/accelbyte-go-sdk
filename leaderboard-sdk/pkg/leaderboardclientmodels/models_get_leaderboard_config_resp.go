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

// ModelsGetLeaderboardConfigResp Models get leaderboard config resp
//
// swagger:model Models get leaderboard config resp.
type ModelsGetLeaderboardConfigResp struct {

	// daily
	// Required: true
	Daily *ModelsDailyConfig `json:"daily"`

	// deletedat
	// Format: date-time
	DeletedAt *strfmt.DateTime `json:"deletedAt,omitempty"`

	// descending
	// Required: true
	Descending *bool `json:"descending"`

	// iconurl
	// Required: true
	IconURL *string `json:"iconURL"`

	// isarchived
	// Required: true
	IsArchived *bool `json:"isArchived"`

	// isdeleted
	// Required: true
	IsDeleted *bool `json:"isDeleted"`

	// leaderboardcode
	// Required: true
	LeaderboardCode *string `json:"leaderboardCode"`

	// monthly
	// Required: true
	Monthly *ModelsMonthlyConfig `json:"monthly"`

	// name
	// Required: true
	Name *string `json:"name"`

	// seasonperiod
	// Required: true
	// Format: int32
	SeasonPeriod *int32 `json:"seasonPeriod"`

	// starttime
	// Required: true
	StartTime *string `json:"startTime"`

	// statcode
	// Required: true
	StatCode *string `json:"statCode"`

	// weekly
	// Required: true
	Weekly *ModelsWeeklyConfig `json:"weekly"`
}

// Validate validates this Models get leaderboard config resp
func (m *ModelsGetLeaderboardConfigResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDaily(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescending(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIconURL(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsArchived(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsDeleted(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLeaderboardCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMonthly(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSeasonPeriod(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStartTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateWeekly(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateDaily(formats strfmt.Registry) error {

	if err := validate.Required("daily", "body", m.Daily); err != nil {
		return err
	}

	if m.Daily != nil {
		if err := m.Daily.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("daily")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateDescending(formats strfmt.Registry) error {

	if err := validate.Required("descending", "body", m.Descending); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateIconURL(formats strfmt.Registry) error {

	if err := validate.Required("iconURL", "body", m.IconURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateIsArchived(formats strfmt.Registry) error {

	if err := validate.Required("isArchived", "body", m.IsArchived); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateIsDeleted(formats strfmt.Registry) error {

	if err := validate.Required("isDeleted", "body", m.IsDeleted); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateLeaderboardCode(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCode", "body", m.LeaderboardCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateMonthly(formats strfmt.Registry) error {

	if err := validate.Required("monthly", "body", m.Monthly); err != nil {
		return err
	}

	if m.Monthly != nil {
		if err := m.Monthly.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("monthly")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateSeasonPeriod(formats strfmt.Registry) error {

	if err := validate.Required("seasonPeriod", "body", m.SeasonPeriod); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateStartTime(formats strfmt.Registry) error {

	if err := validate.Required("startTime", "body", m.StartTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigResp) validateWeekly(formats strfmt.Registry) error {

	if err := validate.Required("weekly", "body", m.Weekly); err != nil {
		return err
	}

	if m.Weekly != nil {
		if err := m.Weekly.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("weekly")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetLeaderboardConfigResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetLeaderboardConfigResp) UnmarshalBinary(b []byte) error {
	var res ModelsGetLeaderboardConfigResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
