// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
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
	Description string `json:"description,omitempty"`

	// isactive
	IsActive bool `json:"isActive"`

	// name
	// Required: true
	Name *string `json:"name"`

	// requirementgroups
	RequirementGroups []*ModelRequirement `json:"requirementGroups,omitempty"`

	// rewards
	Rewards []*ModelReward `json:"rewards,omitempty"`

	// schedule
	Schedule *ModelGoalScheduleRequest `json:"schedule,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`
}

// Validate validates this Model update goal request
func (m *ModelUpdateGoalRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUpdateGoalRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
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
