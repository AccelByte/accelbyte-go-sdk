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

// ModelsUserRankingResponse Models user ranking response
//
// swagger:model Models user ranking response.
type ModelsUserRankingResponse struct {

	// alltime
	// Required: true
	AllTime *ModelsUserRankingResponseDetail `json:"allTime"`

	// current
	// Required: true
	Current *ModelsUserRankingResponseDetail `json:"current"`

	// daily
	// Required: true
	Daily *ModelsUserRankingResponseDetail `json:"daily"`

	// monthly
	// Required: true
	Monthly *ModelsUserRankingResponseDetail `json:"monthly"`

	// userid
	// Required: true
	UserID *string `json:"userId"`

	// weekly
	// Required: true
	Weekly *ModelsUserRankingResponseDetail `json:"weekly"`
}

// Validate validates this Models user ranking response
func (m *ModelsUserRankingResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrent(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDaily(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMonthly(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
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

func (m *ModelsUserRankingResponse) validateAllTime(formats strfmt.Registry) error {

	if err := validate.Required("allTime", "body", m.AllTime); err != nil {
		return err
	}

	if m.AllTime != nil {
		if err := m.AllTime.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("allTime")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsUserRankingResponse) validateCurrent(formats strfmt.Registry) error {

	if err := validate.Required("current", "body", m.Current); err != nil {
		return err
	}

	if m.Current != nil {
		if err := m.Current.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("current")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsUserRankingResponse) validateDaily(formats strfmt.Registry) error {

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

func (m *ModelsUserRankingResponse) validateMonthly(formats strfmt.Registry) error {

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

func (m *ModelsUserRankingResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserRankingResponse) validateWeekly(formats strfmt.Registry) error {

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
func (m *ModelsUserRankingResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserRankingResponse) UnmarshalBinary(b []byte) error {
	var res ModelsUserRankingResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
