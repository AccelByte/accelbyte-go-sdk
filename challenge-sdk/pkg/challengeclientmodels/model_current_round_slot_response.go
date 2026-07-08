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

// ModelCurrentRoundSlotResponse Model current round slot response
//
// swagger:model Model current round slot response.
type ModelCurrentRoundSlotResponse struct {

	// endtime
	// Format: date-time
	EndTime *strfmt.DateTime `json:"endTime,omitempty"`

	// goals
	// Required: true
	Goals []*ModelGoalInSchedulesResponse `json:"goals"`

	// index
	// Required: true
	// Format: int32
	Index *int32 `json:"index"`

	// starttime
	// Required: true
	// Format: date-time
	StartTime strfmt.DateTime `json:"startTime"`
}

// Validate validates this Model current round slot response
func (m *ModelCurrentRoundSlotResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGoals(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIndex(formats); err != nil {
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

func (m *ModelCurrentRoundSlotResponse) validateGoals(formats strfmt.Registry) error {

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

func (m *ModelCurrentRoundSlotResponse) validateIndex(formats strfmt.Registry) error {

	if err := validate.Required("index", "body", m.Index); err != nil {
		return err
	}

	return nil
}

func (m *ModelCurrentRoundSlotResponse) validateStartTime(formats strfmt.Registry) error {

	if err := validate.Required("startTime", "body", strfmt.DateTime(m.StartTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("startTime", "body", "date-time", m.StartTime.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCurrentRoundSlotResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCurrentRoundSlotResponse) UnmarshalBinary(b []byte) error {
	var res ModelCurrentRoundSlotResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
