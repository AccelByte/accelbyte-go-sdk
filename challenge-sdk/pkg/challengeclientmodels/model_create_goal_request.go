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

// ModelCreateGoalRequest Model create goal request
//
// swagger:model Model create goal request.
type ModelCreateGoalRequest struct {

	// code
	// Required: true
	Code *string `json:"code"`

	// description
	Description string `json:"description,omitempty"`

	// isactive
	// Required: true
	IsActive *bool `json:"isActive"`

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

// Validate validates this Model create goal request
func (m *ModelCreateGoalRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsActive(formats); err != nil {
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

func (m *ModelCreateGoalRequest) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ModelCreateGoalRequest) validateIsActive(formats strfmt.Registry) error {

	if err := validate.Required("isActive", "body", m.IsActive); err != nil {
		return err
	}

	return nil
}

func (m *ModelCreateGoalRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCreateGoalRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCreateGoalRequest) UnmarshalBinary(b []byte) error {
	var res ModelCreateGoalRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
