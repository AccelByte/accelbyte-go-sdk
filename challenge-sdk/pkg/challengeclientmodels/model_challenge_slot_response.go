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

// ModelChallengeSlotResponse Model challenge slot response
//
// swagger:model Model challenge slot response.
type ModelChallengeSlotResponse struct {

	// goals
	// Required: true
	Goals []string `json:"goals"`
}

// Validate validates this Model challenge slot response
func (m *ModelChallengeSlotResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGoals(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelChallengeSlotResponse) validateGoals(formats strfmt.Registry) error {

	if err := validate.Required("goals", "body", m.Goals); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelChallengeSlotResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelChallengeSlotResponse) UnmarshalBinary(b []byte) error {
	var res ModelChallengeSlotResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
