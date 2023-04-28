// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievementclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAchievementUpdateRequest Models achievement update request
//
// swagger:model Models achievement update request.
type ModelsAchievementUpdateRequest struct {

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// defaultlanguage
	// Required: true
	DefaultLanguage *string `json:"defaultLanguage"`

	// description
	// Required: true
	Description map[string]string `json:"description"`

	// global
	Global bool `json:"global"`

	// goalvalue
	// Required: true
	// Format: double
	GoalValue *float64 `json:"goalValue"`

	// hidden
	// Required: true
	Hidden *bool `json:"hidden"`

	// incremental
	// Required: true
	Incremental *bool `json:"incremental"`

	// lockedicons
	// Required: true
	LockedIcons []*ModelsIcon `json:"lockedIcons"`

	// name
	// Required: true
	Name map[string]string `json:"name"`

	// statcode
	// Required: true
	StatCode *string `json:"statCode"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// unlockedicons
	// Required: true
	UnlockedIcons []*ModelsIcon `json:"unlockedIcons"`
}

// Validate validates this Models achievement update request
func (m *ModelsAchievementUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDefaultLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGoalValue(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHidden(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIncremental(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLockedIcons(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTags(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUnlockedIcons(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAchievementUpdateRequest) validateDefaultLanguage(formats strfmt.Registry) error {

	if err := validate.Required("defaultLanguage", "body", m.DefaultLanguage); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementUpdateRequest) validateGoalValue(formats strfmt.Registry) error {

	if err := validate.Required("goalValue", "body", m.GoalValue); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementUpdateRequest) validateHidden(formats strfmt.Registry) error {

	if err := validate.Required("hidden", "body", m.Hidden); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementUpdateRequest) validateIncremental(formats strfmt.Registry) error {

	if err := validate.Required("incremental", "body", m.Incremental); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementUpdateRequest) validateLockedIcons(formats strfmt.Registry) error {

	if err := validate.Required("lockedIcons", "body", m.LockedIcons); err != nil {
		return err
	}

	for i := 0; i < len(m.LockedIcons); i++ {
		if swag.IsZero(m.LockedIcons[i]) { // not required
			continue
		}

		if m.LockedIcons[i] != nil {
			if err := m.LockedIcons[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("lockedIcons" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsAchievementUpdateRequest) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementUpdateRequest) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementUpdateRequest) validateUnlockedIcons(formats strfmt.Registry) error {

	if err := validate.Required("unlockedIcons", "body", m.UnlockedIcons); err != nil {
		return err
	}

	for i := 0; i < len(m.UnlockedIcons); i++ {
		if swag.IsZero(m.UnlockedIcons[i]) { // not required
			continue
		}

		if m.UnlockedIcons[i] != nil {
			if err := m.UnlockedIcons[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("unlockedIcons" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAchievementUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAchievementUpdateRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAchievementUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
