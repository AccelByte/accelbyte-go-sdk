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

// ModelChallengeReference Model challenge reference
//
// swagger:model Model challenge reference.
type ModelChallengeReference struct {

	// challengecode
	// Required: true
	ChallengeCode *string `json:"challengeCode"`

	// goalcode
	// Required: true
	GoalCode *string `json:"goalCode"`
}

// Validate validates this Model challenge reference
func (m *ModelChallengeReference) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChallengeCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGoalCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelChallengeReference) validateChallengeCode(formats strfmt.Registry) error {

	if err := validate.Required("challengeCode", "body", m.ChallengeCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelChallengeReference) validateGoalCode(formats strfmt.Registry) error {

	if err := validate.Required("goalCode", "body", m.GoalCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelChallengeReference) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelChallengeReference) UnmarshalBinary(b []byte) error {
	var res ModelChallengeReference
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
