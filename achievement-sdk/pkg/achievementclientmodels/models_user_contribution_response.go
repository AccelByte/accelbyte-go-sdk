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

// ModelsUserContributionResponse Models user contribution response
//
// swagger:model Models user contribution response.
type ModelsUserContributionResponse struct {

	// achievementcode
	// Required: true
	AchievementCode *string `json:"achievementCode"`

	// CanClaimReward is a flag whether the user can claim the reward of not
	// Required: true
	CanClaimReward *bool `json:"canClaimReward"`

	// contributedvalue
	// Required: true
	// Format: double
	ContributedValue *float64 `json:"contributedValue"`

	// id
	// Required: true
	ID *string `json:"id"`

	// Name is achievement name
	// Required: true
	Name map[string]string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models user contribution response
func (m *ModelsUserContributionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAchievementCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCanClaimReward(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateContributedValue(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *ModelsUserContributionResponse) validateAchievementCode(formats strfmt.Registry) error {

	if err := validate.Required("achievementCode", "body", m.AchievementCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserContributionResponse) validateCanClaimReward(formats strfmt.Registry) error {

	if err := validate.Required("canClaimReward", "body", m.CanClaimReward); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserContributionResponse) validateContributedValue(formats strfmt.Registry) error {

	if err := validate.Required("contributedValue", "body", m.ContributedValue); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserContributionResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserContributionResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserContributionResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserContributionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserContributionResponse) UnmarshalBinary(b []byte) error {
	var res ModelsUserContributionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
