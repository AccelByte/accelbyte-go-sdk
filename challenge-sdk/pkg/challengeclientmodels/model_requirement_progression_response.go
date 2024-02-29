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

	// currrentvalue
	// Format: double
	CurrrentValue float64 `json:"currrentValue,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// targetvalue
	// Required: true
	// Format: double
	TargetValue *float64 `json:"targetValue"`
}

// Validate validates this Model requirement progression response
func (m *ModelRequirementProgressionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
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

func (m *ModelRequirementProgressionResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
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
