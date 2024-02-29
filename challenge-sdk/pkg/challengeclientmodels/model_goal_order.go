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

// ModelGoalOrder Model goal order
//
// swagger:model Model goal order.
type ModelGoalOrder struct {

	// goal
	// Required: true
	Goal *ModelGoalResponse `json:"goal"`

	// order
	// Required: true
	// Format: int32
	Order *int32 `json:"order"`
}

// Validate validates this Model goal order
func (m *ModelGoalOrder) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGoal(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOrder(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelGoalOrder) validateGoal(formats strfmt.Registry) error {

	if err := validate.Required("goal", "body", m.Goal); err != nil {
		return err
	}

	if m.Goal != nil {
		if err := m.Goal.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("goal")
			}
			return err
		}
	}

	return nil
}

func (m *ModelGoalOrder) validateOrder(formats strfmt.Registry) error {

	if err := validate.Required("order", "body", m.Order); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelGoalOrder) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGoalOrder) UnmarshalBinary(b []byte) error {
	var res ModelGoalOrder
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
