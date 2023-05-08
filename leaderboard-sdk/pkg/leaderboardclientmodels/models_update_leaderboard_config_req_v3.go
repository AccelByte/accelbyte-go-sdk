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

// ModelsUpdateLeaderboardConfigReqV3 Models update leaderboard config req V3
//
// swagger:model Models update leaderboard config req V3.
type ModelsUpdateLeaderboardConfigReqV3 struct {

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

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this Models update leaderboard config req V3
func (m *ModelsUpdateLeaderboardConfigReqV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescending(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateLeaderboardConfigReqV3) validateAllTime(formats strfmt.Registry) error {

	if err := validate.Required("allTime", "body", m.AllTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateLeaderboardConfigReqV3) validateDescending(formats strfmt.Registry) error {

	if err := validate.Required("descending", "body", m.Descending); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateLeaderboardConfigReqV3) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateLeaderboardConfigReqV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateLeaderboardConfigReqV3) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateLeaderboardConfigReqV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
