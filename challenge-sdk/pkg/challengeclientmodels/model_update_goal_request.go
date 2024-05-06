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

// ModelUpdateGoalRequest Model update goal request
//
// swagger:model Model update goal request.
type ModelUpdateGoalRequest struct {

	// description
	// Required: true
	Description *string `json:"description"`

	// isactive
	IsActive bool `json:"isActive"`

	// name
	// Required: true
	Name *string `json:"name"`

	// requirementgroups
	// Required: true
	RequirementGroups []*ModelRequirement `json:"requirementGroups"`

	// rewards
	// Required: true
	Rewards []*ModelReward `json:"rewards"`

	// schedule
	Schedule *ModelGoalSchedule `json:"schedule,omitempty"`

	// tags
	// Required: true
	Tags []string `json:"tags"`
}

// Validate validates this Model update goal request
func (m *ModelUpdateGoalRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequirementGroups(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRewards(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTags(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUpdateGoalRequest) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelUpdateGoalRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelUpdateGoalRequest) validateRequirementGroups(formats strfmt.Registry) error {

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

func (m *ModelUpdateGoalRequest) validateRewards(formats strfmt.Registry) error {

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

func (m *ModelUpdateGoalRequest) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUpdateGoalRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUpdateGoalRequest) UnmarshalBinary(b []byte) error {
	var res ModelUpdateGoalRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
