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

// ModelsGlobalAchievementResponse Models global achievement response
//
// swagger:model Models global achievement response.
type ModelsGlobalAchievementResponse struct {

	// achievedat
	// Format: date-time
	AchievedAt *strfmt.DateTime `json:"achievedAt,omitempty"`

	// achievementcode
	// Required: true
	AchievementCode *string `json:"achievementCode"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

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

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// status
	// Required: true
	// Format: int32
	Status *int32 `json:"status"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Models global achievement response
func (m *ModelsGlobalAchievementResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAchievementCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLatestValue(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *ModelsGlobalAchievementResponse) validateAchievementCode(formats strfmt.Registry) error {

	if err := validate.Required("achievementCode", "body", m.AchievementCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGlobalAchievementResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGlobalAchievementResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGlobalAchievementResponse) validateLatestValue(formats strfmt.Registry) error {

	if err := validate.Required("latestValue", "body", m.LatestValue); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGlobalAchievementResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGlobalAchievementResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGlobalAchievementResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGlobalAchievementResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGlobalAchievementResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
