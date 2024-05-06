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

// ModelRequirementProgressionResponse Model requirement progression response
//
// swagger:model Model requirement progression response.
type ModelRequirementProgressionResponse struct {

	// completedat
	CompletedAt string `json:"completedAt,omitempty"`

	// currentvalue
	// Required: true
	// Format: double
	CurrentValue *float64 `json:"currentValue"`

	// id
	// Required: true
	ID *string `json:"id"`

	// matcher
	// Required: true
	Matcher *string `json:"matcher"`

	// parametername
	// Required: true
	ParameterName *string `json:"parameterName"`

	// parametertype
	// Required: true
	ParameterType *string `json:"parameterType"`

	// targetvalue
	// Required: true
	// Format: double
	TargetValue *float64 `json:"targetValue"`
}

// Validate validates this Model requirement progression response
func (m *ModelRequirementProgressionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrentValue(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatcher(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateParameterName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateParameterType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelRequirementProgressionResponse) validateCurrentValue(formats strfmt.Registry) error {

	if err := validate.Required("currentValue", "body", m.CurrentValue); err != nil {
		return err
	}

	return nil
}

func (m *ModelRequirementProgressionResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelRequirementProgressionResponse) validateMatcher(formats strfmt.Registry) error {

	if err := validate.Required("matcher", "body", m.Matcher); err != nil {
		return err
	}

	return nil
}

func (m *ModelRequirementProgressionResponse) validateParameterName(formats strfmt.Registry) error {

	if err := validate.Required("parameterName", "body", m.ParameterName); err != nil {
		return err
	}

	return nil
}

func (m *ModelRequirementProgressionResponse) validateParameterType(formats strfmt.Registry) error {

	if err := validate.Required("parameterType", "body", m.ParameterType); err != nil {
		return err
	}

	return nil
}

func (m *ModelRequirementProgressionResponse) validateTargetValue(formats strfmt.Registry) error {

	if err := validate.Required("targetValue", "body", m.TargetValue); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRequirementProgressionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRequirementProgressionResponse) UnmarshalBinary(b []byte) error {
	var res ModelRequirementProgressionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
