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

// ModelCreateChallengeRequest Model create challenge request
//
// swagger:model Model create challenge request.
type ModelCreateChallengeRequest struct {

	// activegoalsperrotation
	// Format: int32
	ActiveGoalsPerRotation int32 `json:"activeGoalsPerRotation,omitempty"`

	// assignmentrule
	// Enum: ['FIXED', 'RANDOMIZED', 'UNSCHEDULED']
	// Required: true
	AssignmentRule *string `json:"assignmentRule"`

	// only lowercase letters, numbers, and the separator - are allowed; must start and end with letter
	// Required: true
	Code *string `json:"code"`

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
	// Required: true
	GoalsVisibility *string `json:"goalsVisibility"`

	// name
	// Required: true
	Name *string `json:"name"`

	// rotation
	// Enum: ['DAILY', 'MONTHLY', 'NONE', 'WEEKLY']
	// Required: true
	Rotation *string `json:"rotation"`

	// startdate
	// Required: true
	// Format: date-time
	StartDate strfmt.DateTime `json:"startDate"`
}

// Validate validates this Model create challenge request
func (m *ModelCreateChallengeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAssignmentRule(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGoalsVisibility(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRotation(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStartDate(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelCreateChallengeRequestTypeAssignmentRulePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FIXED", "RANDOMIZED", "UNSCHEDULED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelCreateChallengeRequestTypeAssignmentRulePropEnum = append(modelCreateChallengeRequestTypeAssignmentRulePropEnum, v)
	}
}

const (

	// ModelCreateChallengeRequestAssignmentRuleFIXED captures enum value "FIXED"
	ModelCreateChallengeRequestAssignmentRuleFIXED string = "FIXED"

	// ModelCreateChallengeRequestAssignmentRuleRANDOMIZED captures enum value "RANDOMIZED"
	ModelCreateChallengeRequestAssignmentRuleRANDOMIZED string = "RANDOMIZED"

	// ModelCreateChallengeRequestAssignmentRuleUNSCHEDULED captures enum value "UNSCHEDULED"
	ModelCreateChallengeRequestAssignmentRuleUNSCHEDULED string = "UNSCHEDULED"
)

// prop value enum
func (m *ModelCreateChallengeRequest) validateAssignmentRuleEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelCreateChallengeRequestTypeAssignmentRulePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelCreateChallengeRequest) validateAssignmentRule(formats strfmt.Registry) error {

	if err := validate.Required("assignmentRule", "body", m.AssignmentRule); err != nil {
		return err
	}

	// value enum
	if err := m.validateAssignmentRuleEnum("assignmentRule", "body", *m.AssignmentRule); err != nil {
		return err
	}

	return nil
}

func (m *ModelCreateChallengeRequest) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

var modelCreateChallengeRequestTypeGoalsVisibilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PERIODONLY", "SHOWALL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelCreateChallengeRequestTypeGoalsVisibilityPropEnum = append(modelCreateChallengeRequestTypeGoalsVisibilityPropEnum, v)
	}
}

const (

	// ModelCreateChallengeRequestGoalsVisibilityPERIODONLY captures enum value "PERIODONLY"
	ModelCreateChallengeRequestGoalsVisibilityPERIODONLY string = "PERIODONLY"

	// ModelCreateChallengeRequestGoalsVisibilitySHOWALL captures enum value "SHOWALL"
	ModelCreateChallengeRequestGoalsVisibilitySHOWALL string = "SHOWALL"
)

// prop value enum
func (m *ModelCreateChallengeRequest) validateGoalsVisibilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelCreateChallengeRequestTypeGoalsVisibilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelCreateChallengeRequest) validateGoalsVisibility(formats strfmt.Registry) error {

	if err := validate.Required("goalsVisibility", "body", m.GoalsVisibility); err != nil {
		return err
	}

	// value enum
	if err := m.validateGoalsVisibilityEnum("goalsVisibility", "body", *m.GoalsVisibility); err != nil {
		return err
	}

	return nil
}

func (m *ModelCreateChallengeRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

var modelCreateChallengeRequestTypeRotationPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DAILY", "MONTHLY", "NONE", "WEEKLY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelCreateChallengeRequestTypeRotationPropEnum = append(modelCreateChallengeRequestTypeRotationPropEnum, v)
	}
}

const (

	// ModelCreateChallengeRequestRotationDAILY captures enum value "DAILY"
	ModelCreateChallengeRequestRotationDAILY string = "DAILY"

	// ModelCreateChallengeRequestRotationMONTHLY captures enum value "MONTHLY"
	ModelCreateChallengeRequestRotationMONTHLY string = "MONTHLY"

	// ModelCreateChallengeRequestRotationNONE captures enum value "NONE"
	ModelCreateChallengeRequestRotationNONE string = "NONE"

	// ModelCreateChallengeRequestRotationWEEKLY captures enum value "WEEKLY"
	ModelCreateChallengeRequestRotationWEEKLY string = "WEEKLY"
)

// prop value enum
func (m *ModelCreateChallengeRequest) validateRotationEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelCreateChallengeRequestTypeRotationPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelCreateChallengeRequest) validateRotation(formats strfmt.Registry) error {

	if err := validate.Required("rotation", "body", m.Rotation); err != nil {
		return err
	}

	// value enum
	if err := m.validateRotationEnum("rotation", "body", *m.Rotation); err != nil {
		return err
	}

	return nil
}

func (m *ModelCreateChallengeRequest) validateStartDate(formats strfmt.Registry) error {

	if err := validate.Required("startDate", "body", strfmt.DateTime(m.StartDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("startDate", "body", "date-time", m.StartDate.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCreateChallengeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCreateChallengeRequest) UnmarshalBinary(b []byte) error {
	var res ModelCreateChallengeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
