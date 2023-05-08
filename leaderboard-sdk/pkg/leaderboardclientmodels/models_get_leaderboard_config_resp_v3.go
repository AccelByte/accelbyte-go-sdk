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

// ModelsGetLeaderboardConfigRespV3 Models get leaderboard config resp V3
//
// swagger:model Models get leaderboard config resp V3.
type ModelsGetLeaderboardConfigRespV3 struct {

	// alltime
	// Required: true
	AllTime *bool `json:"allTime"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// cycleids
	// Required: true
	CycleIds []string `json:"cycleIds"`

	// deletedat
	// Format: date-time
	DeletedAt *strfmt.DateTime `json:"deletedAt,omitempty"`

	// descending
	// Required: true
	Descending *bool `json:"descending"`

	// description
	Description string `json:"description,omitempty"`

	// iconurl
	IconURL string `json:"iconURL,omitempty"`

	// isdeleted
	// Required: true
	IsDeleted *bool `json:"isDeleted"`

	// leaderboardcode
	// Required: true
	LeaderboardCode *string `json:"leaderboardCode"`

	// name
	// Required: true
	Name *string `json:"name"`

	// statcode
	// Required: true
	StatCode *string `json:"statCode"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Models get leaderboard config resp V3
func (m *ModelsGetLeaderboardConfigRespV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCycleIds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescending(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsDeleted(formats); err != nil {
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
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetLeaderboardConfigRespV3) validateAllTime(formats strfmt.Registry) error {

	if err := validate.Required("allTime", "body", m.AllTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigRespV3) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigRespV3) validateCycleIds(formats strfmt.Registry) error {

	if err := validate.Required("cycleIds", "body", m.CycleIds); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigRespV3) validateDescending(formats strfmt.Registry) error {

	if err := validate.Required("descending", "body", m.Descending); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigRespV3) validateIsDeleted(formats strfmt.Registry) error {

	if err := validate.Required("isDeleted", "body", m.IsDeleted); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigRespV3) validateLeaderboardCode(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCode", "body", m.LeaderboardCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigRespV3) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigRespV3) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetLeaderboardConfigRespV3) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetLeaderboardConfigRespV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetLeaderboardConfigRespV3) UnmarshalBinary(b []byte) error {
	var res ModelsGetLeaderboardConfigRespV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
