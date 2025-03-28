// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelGoalProgressionResponse Model goal progression response
//
// swagger:model Model goal progression response.
type ModelGoalProgressionResponse struct {

	// challengecode
	// Required: true
	ChallengeCode *string `json:"challengeCode"`

	// completedat
	CompletedAt string `json:"completedAt,omitempty"`

	// goal
	// Required: true
	Goal *ModelGoalMeta `json:"goal"`

	// goalcode
	// Required: true
	GoalCode *string `json:"goalCode"`

	// goalprogressionid
	// Required: true
	GoalProgressionID *string `json:"goalProgressionId"`

	// requirementprogressions
	// Required: true
	RequirementProgressions []*ModelRequirementProgressionResponse `json:"requirementProgressions"`

	// status
	// Enum: ['ACTIVE', 'COMPLETED', 'NOT_STARTED', 'RETIRED']
	// Required: true
	Status *string `json:"status"`

	// toclaimrewards
	ToClaimRewards []*ModelClaimableUserReward `json:"toClaimRewards,omitempty"`
}

// Validate validates this Model goal progression response
func (m *ModelGoalProgressionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChallengeCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGoal(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGoalCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGoalProgressionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequirementProgressions(formats); err != nil {
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

func (m *ModelGoalProgressionResponse) validateChallengeCode(formats strfmt.Registry) error {

	if err := validate.Required("challengeCode", "body", m.ChallengeCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelGoalProgressionResponse) validateGoal(formats strfmt.Registry) error {

	if err := validate.Required("goal", "body", m.Goal); err != nil {
		return err
	}

	if m.Goal != nil {
		if err := m.Goal.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("goal")
			}
			return err
		}
	}

	return nil
}

func (m *ModelGoalProgressionResponse) validateGoalCode(formats strfmt.Registry) error {

	if err := validate.Required("goalCode", "body", m.GoalCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelGoalProgressionResponse) validateGoalProgressionID(formats strfmt.Registry) error {

	if err := validate.Required("goalProgressionId", "body", m.GoalProgressionID); err != nil {
		return err
	}

	return nil
}

func (m *ModelGoalProgressionResponse) validateRequirementProgressions(formats strfmt.Registry) error {

	if err := validate.Required("requirementProgressions", "body", m.RequirementProgressions); err != nil {
		return err
	}

	for i := 0; i < len(m.RequirementProgressions); i++ {
		if swag.IsZero(m.RequirementProgressions[i]) { // not required
			continue
		}

		if m.RequirementProgressions[i] != nil {
			if err := m.RequirementProgressions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("requirementProgressions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

var modelGoalProgressionResponseTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "COMPLETED", "NOT_STARTED", "RETIRED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelGoalProgressionResponseTypeStatusPropEnum = append(modelGoalProgressionResponseTypeStatusPropEnum, v)
	}
}

const (

	// ModelGoalProgressionResponseStatusACTIVE captures enum value "ACTIVE"
	ModelGoalProgressionResponseStatusACTIVE string = "ACTIVE"

	// ModelGoalProgressionResponseStatusCOMPLETED captures enum value "COMPLETED"
	ModelGoalProgressionResponseStatusCOMPLETED string = "COMPLETED"

	// ModelGoalProgressionResponseStatusNOTSTARTED captures enum value "NOT_STARTED"
	ModelGoalProgressionResponseStatusNOTSTARTED string = "NOT_STARTED"

	// ModelGoalProgressionResponseStatusRETIRED captures enum value "RETIRED"
	ModelGoalProgressionResponseStatusRETIRED string = "RETIRED"
)

// prop value enum
func (m *ModelGoalProgressionResponse) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelGoalProgressionResponseTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelGoalProgressionResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelGoalProgressionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGoalProgressionResponse) UnmarshalBinary(b []byte) error {
	var res ModelGoalProgressionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
