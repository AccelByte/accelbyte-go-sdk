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

// ModelScheduleByGoalResponse Model schedule by goal response
//
// swagger:model Model schedule by goal response.
type ModelScheduleByGoalResponse struct {

	// endtime
	// Required: true
	// Format: date-time
	EndTime strfmt.DateTime `json:"endTime"`

	// starttime
	// Required: true
	// Format: date-time
	StartTime strfmt.DateTime `json:"startTime"`
}

// Validate validates this Model schedule by goal response
func (m *ModelScheduleByGoalResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEndTime(formats); err != nil {
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

func (m *ModelScheduleByGoalResponse) validateEndTime(formats strfmt.Registry) error {

	if err := validate.Required("endTime", "body", strfmt.DateTime(m.EndTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("endTime", "body", "date-time", m.EndTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelScheduleByGoalResponse) validateStartTime(formats strfmt.Registry) error {

	if err := validate.Required("startTime", "body", strfmt.DateTime(m.StartTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("startTime", "body", "date-time", m.StartTime.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelScheduleByGoalResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelScheduleByGoalResponse) UnmarshalBinary(b []byte) error {
	var res ModelScheduleByGoalResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
