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

// ModelsPeriod Models period
//
// swagger:model Models period.
type ModelsPeriod struct {

	// endtime
	// Required: true
	// Format: date-time
	EndTime strfmt.DateTime `json:"endTime"`

	// slot
	// Required: true
	// Format: int32
	Slot *int32 `json:"slot"`

	// starttime
	// Required: true
	// Format: date-time
	StartTime strfmt.DateTime `json:"startTime"`
}

// Validate validates this Models period
func (m *ModelsPeriod) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEndTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSlot(formats); err != nil {
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

func (m *ModelsPeriod) validateEndTime(formats strfmt.Registry) error {

	if err := validate.Required("endTime", "body", strfmt.DateTime(m.EndTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("endTime", "body", "date-time", m.EndTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPeriod) validateSlot(formats strfmt.Registry) error {

	if err := validate.Required("slot", "body", m.Slot); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPeriod) validateStartTime(formats strfmt.Registry) error {

	if err := validate.Required("startTime", "body", strfmt.DateTime(m.StartTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("startTime", "body", "date-time", m.StartTime.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPeriod) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPeriod) UnmarshalBinary(b []byte) error {
	var res ModelsPeriod
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
