// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelGoalResponse Model goal response
//
// swagger:model Model goal response.
type ModelGoalResponse struct {

	// challengecode
	// Required: true
	ChallengeCode *string `json:"challengeCode"`

	// code
	// Required: true
	Code *string `json:"code"`

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// description
	// Required: true
	Description *string `json:"description"`

	// isactive
	// Required: true
	IsActive *bool `json:"isActive"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// requirementgroups
	// Required: true
	RequirementGroups []*ModelRequirement `json:"requirementGroups"`

	// rewards
	// Required: true
	Rewards []*ModelReward `json:"rewards"`

	// tags
	Tags []string `json:"tags,omitempty"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`
}

// Validate validates this Model goal response
func (m *ModelGoalResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChallengeCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequirementGroups(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRewards(formats); err != nil {
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

func (m *ModelGoalResponse) validateChallengeCode(formats strfmt.Registry) error {

	if err := validate.Required("challengeCode", "body", m.ChallengeCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelGoalResponse) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ModelGoalResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelGoalResponse) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelGoalResponse) validateIsActive(formats strfmt.Registry) error {

	if err := validate.Required("isActive", "body", m.IsActive); err != nil {
		return err
	}

	return nil
}

func (m *ModelGoalResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelGoalResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelGoalResponse) validateRequirementGroups(formats strfmt.Registry) error {

	if err := validate.Required("requirementGroups", "body", m.RequirementGroups); err != nil {
		return err
	}

	for i := 0; i < len(m.RequirementGroups); i++ {
		if swag.IsZero(m.RequirementGroups[i]) { // not required
			continue
		}

		if m.RequirementGroups[i] != nil {
			if err := m.RequirementGroups[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("requirementGroups" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelGoalResponse) validateRewards(formats strfmt.Registry) error {

	if err := validate.Required("rewards", "body", m.Rewards); err != nil {
		return err
	}

	for i := 0; i < len(m.Rewards); i++ {
		if swag.IsZero(m.Rewards[i]) { // not required
			continue
		}

		if m.Rewards[i] != nil {
			if err := m.Rewards[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("rewards" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelGoalResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelGoalResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGoalResponse) UnmarshalBinary(b []byte) error {
	var res ModelGoalResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
