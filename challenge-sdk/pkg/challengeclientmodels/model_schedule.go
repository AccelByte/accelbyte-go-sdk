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

// ModelSchedule Model schedule
//
// swagger:model Model schedule.
type ModelSchedule struct {

	// challengecode
	// Required: true
	ChallengeCode *string `json:"challengeCode"`

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// endtime
	// Required: true
	EndTime *string `json:"endTime"`

	// goals
	// Required: true
	Goals []*ModelGoalOrder `json:"goals"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// starttime
	// Required: true
	StartTime *string `json:"startTime"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`
}

// Validate validates this Model schedule
func (m *ModelSchedule) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChallengeCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEndTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGoals(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStartTime(formats); err != nil {
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

func (m *ModelSchedule) validateChallengeCode(formats strfmt.Registry) error {

	if err := validate.Required("challengeCode", "body", m.ChallengeCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelSchedule) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelSchedule) validateEndTime(formats strfmt.Registry) error {

	if err := validate.Required("endTime", "body", m.EndTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelSchedule) validateGoals(formats strfmt.Registry) error {

	if err := validate.Required("goals", "body", m.Goals); err != nil {
		return err
	}

	for i := 0; i < len(m.Goals); i++ {
		if swag.IsZero(m.Goals[i]) { // not required
			continue
		}

		if m.Goals[i] != nil {
			if err := m.Goals[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("goals" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelSchedule) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelSchedule) validateStartTime(formats strfmt.Registry) error {

	if err := validate.Required("startTime", "body", m.StartTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelSchedule) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelSchedule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelSchedule) UnmarshalBinary(b []byte) error {
	var res ModelSchedule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
