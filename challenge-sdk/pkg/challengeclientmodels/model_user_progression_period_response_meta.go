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

// ModelUserProgressionPeriodResponseMeta Model user progression period response meta
//
// swagger:model Model user progression period response meta.
type ModelUserProgressionPeriodResponseMeta struct {

	// endtime
	// Required: true
	EndTime *string `json:"endTime"`

	// starttime
	// Required: true
	StartTime *string `json:"startTime"`
}

// Validate validates this Model user progression period response meta
func (m *ModelUserProgressionPeriodResponseMeta) Validate(formats strfmt.Registry) error {
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

func (m *ModelUserProgressionPeriodResponseMeta) validateEndTime(formats strfmt.Registry) error {

	if err := validate.Required("endTime", "body", m.EndTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserProgressionPeriodResponseMeta) validateStartTime(formats strfmt.Registry) error {

	if err := validate.Required("startTime", "body", m.StartTime); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserProgressionPeriodResponseMeta) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserProgressionPeriodResponseMeta) UnmarshalBinary(b []byte) error {
	var res ModelUserProgressionPeriodResponseMeta
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
