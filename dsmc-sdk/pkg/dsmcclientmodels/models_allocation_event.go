// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAllocationEvent Models allocation event
//
// swagger:model Models allocation event.
type ModelsAllocationEvent struct {

	// description
	// Required: true
	Description *string `json:"description"`

	// time_stamp
	// Required: true
	// Format: date-time
	TimeStamp strfmt.DateTime `json:"time_stamp"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Models allocation event
func (m *ModelsAllocationEvent) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimeStamp(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAllocationEvent) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllocationEvent) validateTimeStamp(formats strfmt.Registry) error {

	if err := validate.Required("time_stamp", "body", strfmt.DateTime(m.TimeStamp)); err != nil {
		return err
	}

	if err := validate.FormatOf("time_stamp", "body", "date-time", m.TimeStamp.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllocationEvent) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAllocationEvent) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAllocationEvent) UnmarshalBinary(b []byte) error {
	var res ModelsAllocationEvent
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
