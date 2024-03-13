// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUpdateChallengeRequest Models update challenge request
//
// swagger:model Models update challenge request.
type ModelsUpdateChallengeRequest struct {

	// activegoalsperrotation
	// Format: int32
	ActiveGoalsPerRotation int32 `json:"activeGoalsPerRotation,omitempty"`

	// assignmentrule
	// Enum: ['FIXED', 'RANDOMIZED', 'UNSCHEDULED']
	AssignmentRule string `json:"assignmentRule,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// endafter
	// Format: int32
	EndAfter int32 `json:"endAfter,omitempty"`

	// enddate
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// goalsvisibility
	// Enum: ['PERIODONLY', 'SHOWALL']
	GoalsVisibility string `json:"goalsVisibility,omitempty"`

	// name
	Name string `json:"name,omitempty"`

	// rotation
	// Enum: ['DAILY', 'MONTHLY', 'NONE', 'WEEKLY']
	Rotation string `json:"rotation,omitempty"`

	// startdate
	// Format: date-time
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`
}

// Validate validates this Models update challenge request
func (m *ModelsUpdateChallengeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelsUpdateChallengeRequestTypeAssignmentRulePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FIXED", "RANDOMIZED", "UNSCHEDULED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsUpdateChallengeRequestTypeAssignmentRulePropEnum = append(modelsUpdateChallengeRequestTypeAssignmentRulePropEnum, v)
	}
}

const (

	// ModelsUpdateChallengeRequestAssignmentRuleFIXED captures enum value "FIXED"
	ModelsUpdateChallengeRequestAssignmentRuleFIXED string = "FIXED"

	// ModelsUpdateChallengeRequestAssignmentRuleRANDOMIZED captures enum value "RANDOMIZED"
	ModelsUpdateChallengeRequestAssignmentRuleRANDOMIZED string = "RANDOMIZED"

	// ModelsUpdateChallengeRequestAssignmentRuleUNSCHEDULED captures enum value "UNSCHEDULED"
	ModelsUpdateChallengeRequestAssignmentRuleUNSCHEDULED string = "UNSCHEDULED"
)

// prop value enum
func (m *ModelsUpdateChallengeRequest) validateAssignmentRuleEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsUpdateChallengeRequestTypeAssignmentRulePropEnum, true); err != nil {
		return err
	}
	return nil
}

var modelsUpdateChallengeRequestTypeGoalsVisibilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PERIODONLY", "SHOWALL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsUpdateChallengeRequestTypeGoalsVisibilityPropEnum = append(modelsUpdateChallengeRequestTypeGoalsVisibilityPropEnum, v)
	}
}

const (

	// ModelsUpdateChallengeRequestGoalsVisibilityPERIODONLY captures enum value "PERIODONLY"
	ModelsUpdateChallengeRequestGoalsVisibilityPERIODONLY string = "PERIODONLY"

	// ModelsUpdateChallengeRequestGoalsVisibilitySHOWALL captures enum value "SHOWALL"
	ModelsUpdateChallengeRequestGoalsVisibilitySHOWALL string = "SHOWALL"
)

// prop value enum
func (m *ModelsUpdateChallengeRequest) validateGoalsVisibilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsUpdateChallengeRequestTypeGoalsVisibilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

var modelsUpdateChallengeRequestTypeRotationPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DAILY", "MONTHLY", "NONE", "WEEKLY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsUpdateChallengeRequestTypeRotationPropEnum = append(modelsUpdateChallengeRequestTypeRotationPropEnum, v)
	}
}

const (

	// ModelsUpdateChallengeRequestRotationDAILY captures enum value "DAILY"
	ModelsUpdateChallengeRequestRotationDAILY string = "DAILY"

	// ModelsUpdateChallengeRequestRotationMONTHLY captures enum value "MONTHLY"
	ModelsUpdateChallengeRequestRotationMONTHLY string = "MONTHLY"

	// ModelsUpdateChallengeRequestRotationNONE captures enum value "NONE"
	ModelsUpdateChallengeRequestRotationNONE string = "NONE"

	// ModelsUpdateChallengeRequestRotationWEEKLY captures enum value "WEEKLY"
	ModelsUpdateChallengeRequestRotationWEEKLY string = "WEEKLY"
)

// prop value enum
func (m *ModelsUpdateChallengeRequest) validateRotationEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsUpdateChallengeRequestTypeRotationPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateChallengeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateChallengeRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateChallengeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
