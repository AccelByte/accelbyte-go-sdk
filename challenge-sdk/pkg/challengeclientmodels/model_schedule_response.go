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

// ModelScheduleResponse Model schedule response
//
// swagger:model Model schedule response.
type ModelScheduleResponse struct {

	// endtime
	// Required: true
	// Format: date-time
	EndTime strfmt.DateTime `json:"endTime"`

	// goals
	// Required: true
	Goals []*ModelGoalInSchedulesResponse `json:"goals"`

	// starttime
	// Required: true
	// Format: date-time
	StartTime strfmt.DateTime `json:"startTime"`
}

// Validate validates this Model schedule response
func (m *ModelScheduleResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEndTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGoals(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStartTime(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelScheduleResponse) validateEndTime(formats strfmt.Registry) error {

	if err := validate.Required("endTime", "body", strfmt.DateTime(m.EndTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("endTime", "body", "date-time", m.EndTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelScheduleResponse) validateGoals(formats strfmt.Registry) error {

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

func (m *ModelScheduleResponse) validateStartTime(formats strfmt.Registry) error {

	if err := validate.Required("startTime", "body", strfmt.DateTime(m.StartTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("startTime", "body", "date-time", m.StartTime.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelScheduleResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelScheduleResponse) UnmarshalBinary(b []byte) error {
	var res ModelScheduleResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
