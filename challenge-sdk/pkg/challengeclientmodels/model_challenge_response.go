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

// ModelChallengeResponse Model challenge response
//
// swagger:model Model challenge response.
type ModelChallengeResponse struct {

	// activegoalsperrotation
	// Required: true
	// Format: int32
	ActiveGoalsPerRotation *int32 `json:"activeGoalsPerRotation"`

	// assignmentrule
	// Enum: ['FIXED', 'RANDOMIZED', 'UNSCHEDULED']
	// Required: true
	AssignmentRule *string `json:"assignmentRule"`

	// code
	// Required: true
	Code *string `json:"code"`

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// description
	// Required: true
	Description *string `json:"description"`

	// endafter
	// Format: int32
	EndAfter int32 `json:"endAfter,omitempty"`

	// enddate
	EndDate string `json:"endDate,omitempty"`

	// goalsvisibility
	// Enum: ['PERIODONLY', 'SHOWALL']
	// Required: true
	GoalsVisibility *string `json:"goalsVisibility"`

	// name
	// Required: true
	Name *string `json:"name"`

	// repeatafter
	// Format: int32
	RepeatAfter int32 `json:"repeatAfter,omitempty"`

	// resetconfig
	// Required: true
	ResetConfig *ModelResetConfig `json:"resetConfig"`

	// rotation
	// Enum: ['DAILY', 'MONTHLY', 'NONE', 'WEEKLY']
	// Required: true
	Rotation *string `json:"rotation"`

	// startdate
	// Required: true
	StartDate *string `json:"startDate"`

	// status
	// Enum: ['INIT', 'RETIRED', 'TIED']
	// Required: true
	Status *string `json:"status"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`
}

// Validate validates this Model challenge response
func (m *ModelChallengeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActiveGoalsPerRotation(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAssignmentRule(formats); err != nil {
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
	if err := m.validateGoalsVisibility(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResetConfig(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRotation(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStartDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
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

func (m *ModelChallengeResponse) validateActiveGoalsPerRotation(formats strfmt.Registry) error {

	if err := validate.Required("activeGoalsPerRotation", "body", m.ActiveGoalsPerRotation); err != nil {
		return err
	}

	return nil
}

var modelChallengeResponseTypeAssignmentRulePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FIXED", "RANDOMIZED", "UNSCHEDULED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelChallengeResponseTypeAssignmentRulePropEnum = append(modelChallengeResponseTypeAssignmentRulePropEnum, v)
	}
}

const (

	// ModelChallengeResponseAssignmentRuleFIXED captures enum value "FIXED"
	ModelChallengeResponseAssignmentRuleFIXED string = "FIXED"

	// ModelChallengeResponseAssignmentRuleRANDOMIZED captures enum value "RANDOMIZED"
	ModelChallengeResponseAssignmentRuleRANDOMIZED string = "RANDOMIZED"

	// ModelChallengeResponseAssignmentRuleUNSCHEDULED captures enum value "UNSCHEDULED"
	ModelChallengeResponseAssignmentRuleUNSCHEDULED string = "UNSCHEDULED"
)

// prop value enum
func (m *ModelChallengeResponse) validateAssignmentRuleEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelChallengeResponseTypeAssignmentRulePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelChallengeResponse) validateAssignmentRule(formats strfmt.Registry) error {

	if err := validate.Required("assignmentRule", "body", m.AssignmentRule); err != nil {
		return err
	}

	// value enum
	if err := m.validateAssignmentRuleEnum("assignmentRule", "body", *m.AssignmentRule); err != nil {
		return err
	}

	return nil
}

func (m *ModelChallengeResponse) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ModelChallengeResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelChallengeResponse) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

var modelChallengeResponseTypeGoalsVisibilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PERIODONLY", "SHOWALL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelChallengeResponseTypeGoalsVisibilityPropEnum = append(modelChallengeResponseTypeGoalsVisibilityPropEnum, v)
	}
}

const (

	// ModelChallengeResponseGoalsVisibilityPERIODONLY captures enum value "PERIODONLY"
	ModelChallengeResponseGoalsVisibilityPERIODONLY string = "PERIODONLY"

	// ModelChallengeResponseGoalsVisibilitySHOWALL captures enum value "SHOWALL"
	ModelChallengeResponseGoalsVisibilitySHOWALL string = "SHOWALL"
)

// prop value enum
func (m *ModelChallengeResponse) validateGoalsVisibilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelChallengeResponseTypeGoalsVisibilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelChallengeResponse) validateGoalsVisibility(formats strfmt.Registry) error {

	if err := validate.Required("goalsVisibility", "body", m.GoalsVisibility); err != nil {
		return err
	}

	// value enum
	if err := m.validateGoalsVisibilityEnum("goalsVisibility", "body", *m.GoalsVisibility); err != nil {
		return err
	}

	return nil
}

func (m *ModelChallengeResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelChallengeResponse) validateResetConfig(formats strfmt.Registry) error {

	if err := validate.Required("resetConfig", "body", m.ResetConfig); err != nil {
		return err
	}

	if m.ResetConfig != nil {
		if err := m.ResetConfig.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("resetConfig")
			}
			return err
		}
	}

	return nil
}

var modelChallengeResponseTypeRotationPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DAILY", "MONTHLY", "NONE", "WEEKLY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelChallengeResponseTypeRotationPropEnum = append(modelChallengeResponseTypeRotationPropEnum, v)
	}
}

const (

	// ModelChallengeResponseRotationDAILY captures enum value "DAILY"
	ModelChallengeResponseRotationDAILY string = "DAILY"

	// ModelChallengeResponseRotationMONTHLY captures enum value "MONTHLY"
	ModelChallengeResponseRotationMONTHLY string = "MONTHLY"

	// ModelChallengeResponseRotationNONE captures enum value "NONE"
	ModelChallengeResponseRotationNONE string = "NONE"

	// ModelChallengeResponseRotationWEEKLY captures enum value "WEEKLY"
	ModelChallengeResponseRotationWEEKLY string = "WEEKLY"
)

// prop value enum
func (m *ModelChallengeResponse) validateRotationEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelChallengeResponseTypeRotationPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelChallengeResponse) validateRotation(formats strfmt.Registry) error {

	if err := validate.Required("rotation", "body", m.Rotation); err != nil {
		return err
	}

	// value enum
	if err := m.validateRotationEnum("rotation", "body", *m.Rotation); err != nil {
		return err
	}

	return nil
}

func (m *ModelChallengeResponse) validateStartDate(formats strfmt.Registry) error {

	if err := validate.Required("startDate", "body", m.StartDate); err != nil {
		return err
	}

	return nil
}

var modelChallengeResponseTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INIT", "RETIRED", "TIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelChallengeResponseTypeStatusPropEnum = append(modelChallengeResponseTypeStatusPropEnum, v)
	}
}

const (

	// ModelChallengeResponseStatusINIT captures enum value "INIT"
	ModelChallengeResponseStatusINIT string = "INIT"

	// ModelChallengeResponseStatusRETIRED captures enum value "RETIRED"
	ModelChallengeResponseStatusRETIRED string = "RETIRED"

	// ModelChallengeResponseStatusTIED captures enum value "TIED"
	ModelChallengeResponseStatusTIED string = "TIED"
)

// prop value enum
func (m *ModelChallengeResponse) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelChallengeResponseTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelChallengeResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelChallengeResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelChallengeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelChallengeResponse) UnmarshalBinary(b []byte) error {
	var res ModelChallengeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
