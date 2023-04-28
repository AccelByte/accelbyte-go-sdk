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

// ModelsAchievementResponse Models achievement response
//
// swagger:model Models achievement response.
type ModelsAchievementResponse struct {

	// achievementcode
	// Required: true
	AchievementCode *string `json:"achievementCode"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// defaultlanguage
	// Required: true
	DefaultLanguage *string `json:"defaultLanguage"`

	// description
	// Required: true
	Description map[string]string `json:"description"`

	// global
	// Required: true
	Global *bool `json:"global"`

	// goalvalue
	// Format: double
	GoalValue float64 `json:"goalValue,omitempty"`

	// hidden
	// Required: true
	Hidden *bool `json:"hidden"`

	// incremental
	// Required: true
	Incremental *bool `json:"incremental"`

	// listorder
	// Required: true
	// Format: int32
	ListOrder *int32 `json:"listOrder"`

	// lockedicons
	// Required: true
	LockedIcons []*ModelsIcon `json:"lockedIcons"`

	// name
	// Required: true
	Name map[string]string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// statcode
	StatCode string `json:"statCode,omitempty"`

	// Achievement progression status: [INIT, TIED]
	Status string `json:"status,omitempty"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// unlockedicons
	// Required: true
	UnlockedIcons []*ModelsIcon `json:"unlockedIcons"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Models achievement response
func (m *ModelsAchievementResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAchievementCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDefaultLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGlobal(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHidden(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIncremental(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateListOrder(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLockedIcons(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTags(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUnlockedIcons(formats); err != nil {
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

func (m *ModelsAchievementResponse) validateAchievementCode(formats strfmt.Registry) error {

	if err := validate.Required("achievementCode", "body", m.AchievementCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementResponse) validateDefaultLanguage(formats strfmt.Registry) error {

	if err := validate.Required("defaultLanguage", "body", m.DefaultLanguage); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementResponse) validateGlobal(formats strfmt.Registry) error {

	if err := validate.Required("global", "body", m.Global); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementResponse) validateHidden(formats strfmt.Registry) error {

	if err := validate.Required("hidden", "body", m.Hidden); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementResponse) validateIncremental(formats strfmt.Registry) error {

	if err := validate.Required("incremental", "body", m.Incremental); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementResponse) validateListOrder(formats strfmt.Registry) error {

	if err := validate.Required("listOrder", "body", m.ListOrder); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementResponse) validateLockedIcons(formats strfmt.Registry) error {

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

func (m *ModelsAchievementResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementResponse) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAchievementResponse) validateUnlockedIcons(formats strfmt.Registry) error {

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

func (m *ModelsAchievementResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAchievementResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAchievementResponse) UnmarshalBinary(b []byte) error {
	var res ModelsAchievementResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
