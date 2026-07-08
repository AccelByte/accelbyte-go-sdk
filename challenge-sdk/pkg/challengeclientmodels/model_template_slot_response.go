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

// ModelTemplateSlotResponse Model template slot response
//
// swagger:model Model template slot response.
type ModelTemplateSlotResponse struct {

	// goals
	// Required: true
	Goals []*ModelGoalInSchedulesResponse `json:"goals"`

	// index
	// Required: true
	// Format: int32
	Index *int32 `json:"index"`
}

// Validate validates this Model template slot response
func (m *ModelTemplateSlotResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGoals(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIndex(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelTemplateSlotResponse) validateGoals(formats strfmt.Registry) error {

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

func (m *ModelTemplateSlotResponse) validateIndex(formats strfmt.Registry) error {

	if err := validate.Required("index", "body", m.Index); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelTemplateSlotResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelTemplateSlotResponse) UnmarshalBinary(b []byte) error {
	var res ModelTemplateSlotResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
