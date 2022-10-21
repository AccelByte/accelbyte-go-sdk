// Code generated by go-swagger; DO NOT EDIT.

package dsmcclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAllocationEvent models allocation event
//
// swagger:model models.AllocationEvent
type ModelsAllocationEvent struct {

	// description
	// Required: true
	Description *string `json:"description"`

	// time stamp
	// Required: true
	// Format: date-time
	TimeStamp strfmt.DateTime `json:"time_stamp"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this models allocation event
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