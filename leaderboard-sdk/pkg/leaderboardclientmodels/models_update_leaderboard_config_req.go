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

// ModelsUpdateLeaderboardConfigReq Models update leaderboard config req
//
// swagger:model Models update leaderboard config req.
type ModelsUpdateLeaderboardConfigReq struct {

	// daily
	// Required: true
	Daily *ModelsDailyConfig `json:"daily"`

	// descending
	// Required: true
	Descending *bool `json:"descending"`

	// iconurl
	// Required: true
	IconURL *string `json:"iconURL"`

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

// Validate validates this Models update leaderboard config req
func (m *ModelsUpdateLeaderboardConfigReq) Validate(formats strfmt.Registry) error {
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

func (m *ModelsUpdateLeaderboardConfigReq) validateDaily(formats strfmt.Registry) error {

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

func (m *ModelsUpdateLeaderboardConfigReq) validateDescending(formats strfmt.Registry) error {

	if err := validate.Required("descending", "body", m.Descending); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateLeaderboardConfigReq) validateIconURL(formats strfmt.Registry) error {

	if err := validate.Required("iconURL", "body", m.IconURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateLeaderboardConfigReq) validateMonthly(formats strfmt.Registry) error {

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

func (m *ModelsUpdateLeaderboardConfigReq) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateLeaderboardConfigReq) validateSeasonPeriod(formats strfmt.Registry) error {

	if err := validate.Required("seasonPeriod", "body", m.SeasonPeriod); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateLeaderboardConfigReq) validateStartTime(formats strfmt.Registry) error {

	if err := validate.Required("startTime", "body", m.StartTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateLeaderboardConfigReq) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateLeaderboardConfigReq) validateWeekly(formats strfmt.Registry) error {

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
func (m *ModelsUpdateLeaderboardConfigReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateLeaderboardConfigReq) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateLeaderboardConfigReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
