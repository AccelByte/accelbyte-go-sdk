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

// ModelUpdateChallengeRequest Model update challenge request
//
// swagger:model Model update challenge request.
type ModelUpdateChallengeRequest struct {

	// activegoalsperrotation
	// Format: int32
	ActiveGoalsPerRotation int32 `json:"activeGoalsPerRotation,omitempty"`

	// assignmentrule
	// Enum: ['CUSTOM', 'FIXED', 'RANDOMIZED', 'UNSCHEDULED']
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

	// randomizedperrotation
	RandomizedPerRotation bool `json:"randomizedPerRotation"`

	// repeatafter
	// Format: int32
	RepeatAfter int32 `json:"repeatAfter,omitempty"`

	// resetconfig
	ResetConfig *ModelResetConfig `json:"resetConfig,omitempty"`

	// rotation
	// Enum: ['DAILY', 'MONTHLY', 'NONE', 'WEEKLY']
	Rotation string `json:"rotation,omitempty"`

	// startdate
	// Format: date-time
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`
}

// Validate validates this Model update challenge request
func (m *ModelUpdateChallengeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelUpdateChallengeRequestTypeAssignmentRulePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CUSTOM", "FIXED", "RANDOMIZED", "UNSCHEDULED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelUpdateChallengeRequestTypeAssignmentRulePropEnum = append(modelUpdateChallengeRequestTypeAssignmentRulePropEnum, v)
	}
}

const (

	// ModelUpdateChallengeRequestAssignmentRuleCUSTOM captures enum value "CUSTOM"
	ModelUpdateChallengeRequestAssignmentRuleCUSTOM string = "CUSTOM"

	// ModelUpdateChallengeRequestAssignmentRuleFIXED captures enum value "FIXED"
	ModelUpdateChallengeRequestAssignmentRuleFIXED string = "FIXED"

	// ModelUpdateChallengeRequestAssignmentRuleRANDOMIZED captures enum value "RANDOMIZED"
	ModelUpdateChallengeRequestAssignmentRuleRANDOMIZED string = "RANDOMIZED"

	// ModelUpdateChallengeRequestAssignmentRuleUNSCHEDULED captures enum value "UNSCHEDULED"
	ModelUpdateChallengeRequestAssignmentRuleUNSCHEDULED string = "UNSCHEDULED"
)

// prop value enum
func (m *ModelUpdateChallengeRequest) validateAssignmentRuleEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelUpdateChallengeRequestTypeAssignmentRulePropEnum, true); err != nil {
		return err
	}
	return nil
}

var modelUpdateChallengeRequestTypeGoalsVisibilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PERIODONLY", "SHOWALL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelUpdateChallengeRequestTypeGoalsVisibilityPropEnum = append(modelUpdateChallengeRequestTypeGoalsVisibilityPropEnum, v)
	}
}

const (

	// ModelUpdateChallengeRequestGoalsVisibilityPERIODONLY captures enum value "PERIODONLY"
	ModelUpdateChallengeRequestGoalsVisibilityPERIODONLY string = "PERIODONLY"

	// ModelUpdateChallengeRequestGoalsVisibilitySHOWALL captures enum value "SHOWALL"
	ModelUpdateChallengeRequestGoalsVisibilitySHOWALL string = "SHOWALL"
)

// prop value enum
func (m *ModelUpdateChallengeRequest) validateGoalsVisibilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelUpdateChallengeRequestTypeGoalsVisibilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

var modelUpdateChallengeRequestTypeRotationPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DAILY", "MONTHLY", "NONE", "WEEKLY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelUpdateChallengeRequestTypeRotationPropEnum = append(modelUpdateChallengeRequestTypeRotationPropEnum, v)
	}
}

const (

	// ModelUpdateChallengeRequestRotationDAILY captures enum value "DAILY"
	ModelUpdateChallengeRequestRotationDAILY string = "DAILY"

	// ModelUpdateChallengeRequestRotationMONTHLY captures enum value "MONTHLY"
	ModelUpdateChallengeRequestRotationMONTHLY string = "MONTHLY"

	// ModelUpdateChallengeRequestRotationNONE captures enum value "NONE"
	ModelUpdateChallengeRequestRotationNONE string = "NONE"

	// ModelUpdateChallengeRequestRotationWEEKLY captures enum value "WEEKLY"
	ModelUpdateChallengeRequestRotationWEEKLY string = "WEEKLY"
)

// prop value enum
func (m *ModelUpdateChallengeRequest) validateRotationEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelUpdateChallengeRequestTypeRotationPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelUpdateChallengeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUpdateChallengeRequest) UnmarshalBinary(b []byte) error {
	var res ModelUpdateChallengeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
