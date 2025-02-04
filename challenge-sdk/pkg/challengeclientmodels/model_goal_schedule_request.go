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

// ModelGoalScheduleRequest Model goal schedule request
//
// swagger:model Model goal schedule request.
type ModelGoalScheduleRequest struct {

	// endtime
	// Format: date-time
	EndTime *strfmt.DateTime `json:"endTime,omitempty"`

	// order
	// Required: true
	// Format: int32
	Order *int32 `json:"order"`

	// starttime
	// Required: true
	// Format: date-time
	StartTime strfmt.DateTime `json:"startTime"`
}

// Validate validates this Model goal schedule request
func (m *ModelGoalScheduleRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateOrder(formats); err != nil {
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

func (m *ModelGoalScheduleRequest) validateOrder(formats strfmt.Registry) error {

	if err := validate.Required("order", "body", m.Order); err != nil {
		return err
	}

	return nil
}

func (m *ModelGoalScheduleRequest) validateStartTime(formats strfmt.Registry) error {

	if err := validate.Required("startTime", "body", strfmt.DateTime(m.StartTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("startTime", "body", "date-time", m.StartTime.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelGoalScheduleRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGoalScheduleRequest) UnmarshalBinary(b []byte) error {
	var res ModelGoalScheduleRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
