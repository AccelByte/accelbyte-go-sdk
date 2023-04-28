// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievementclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUserAchievementResponse Models user achievement response
//
// swagger:model Models user achievement response.
type ModelsUserAchievementResponse struct {

	// achievedat
	// Required: true
	// Format: date-time
	AchievedAt strfmt.DateTime `json:"achievedAt"`

	// achievementcode
	// Required: true
	AchievementCode *string `json:"achievementCode"`

	// id
	// Required: true
	ID *string `json:"id"`

	// latestvalue
	// Required: true
	// Format: double
	LatestValue *float64 `json:"latestValue"`

	// name
	// Required: true
	Name map[string]string `json:"name"`

	// status
	// Required: true
	// Format: int32
	Status *int32 `json:"status"`
}

// Validate validates this Models user achievement response
func (m *ModelsUserAchievementResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAchievedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAchievementCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLatestValue(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUserAchievementResponse) validateAchievedAt(formats strfmt.Registry) error {

	if err := validate.Required("achievedAt", "body", strfmt.DateTime(m.AchievedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("achievedAt", "body", "date-time", m.AchievedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserAchievementResponse) validateAchievementCode(formats strfmt.Registry) error {

	if err := validate.Required("achievementCode", "body", m.AchievementCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserAchievementResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserAchievementResponse) validateLatestValue(formats strfmt.Registry) error {

	if err := validate.Required("latestValue", "body", m.LatestValue); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserAchievementResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserAchievementResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserAchievementResponse) UnmarshalBinary(b []byte) error {
	var res ModelsUserAchievementResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
