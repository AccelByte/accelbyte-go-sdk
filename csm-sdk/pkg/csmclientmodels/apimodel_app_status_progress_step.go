// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelAppStatusProgressStep Apimodel app status progress step
//
// swagger:model Apimodel app status progress step.
type ApimodelAppStatusProgressStep struct {

	// finished_at
	// Format: date-time
	FinishedAt *strfmt.DateTime `json:"finished_at,omitempty"`

	// started_at
	// Format: date-time
	StartedAt *strfmt.DateTime `json:"started_at,omitempty"`

	// status
	// Required: true
	Status *string `json:"status"`

	// status_message
	StatusMessage string `json:"status_message,omitempty"`

	// step
	// Required: true
	Step *string `json:"step"`

	// step_order
	// Required: true
	// Format: integer
	StepOrder *int64 `json:"step_order"`
}

// Validate validates this Apimodel app status progress step
func (m *ApimodelAppStatusProgressStep) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStep(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStepOrder(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelAppStatusProgressStep) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppStatusProgressStep) validateStep(formats strfmt.Registry) error {

	if err := validate.Required("step", "body", m.Step); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppStatusProgressStep) validateStepOrder(formats strfmt.Registry) error {

	if err := validate.Required("step_order", "body", m.StepOrder); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelAppStatusProgressStep) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelAppStatusProgressStep) UnmarshalBinary(b []byte) error {
	var res ApimodelAppStatusProgressStep
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
