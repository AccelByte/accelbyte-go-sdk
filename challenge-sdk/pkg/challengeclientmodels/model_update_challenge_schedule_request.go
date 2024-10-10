// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUpdateChallengeScheduleRequest Model update challenge schedule request
//
// swagger:model Model update challenge schedule request.
type ModelUpdateChallengeScheduleRequest struct {

	// action
	// Enum: ['ACCELERATE', 'STOP']
	// Required: true
	Action *string `json:"action"`

	// enddate
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`
}

// Validate validates this Model update challenge schedule request
func (m *ModelUpdateChallengeScheduleRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelUpdateChallengeScheduleRequestTypeActionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACCELERATE", "STOP"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelUpdateChallengeScheduleRequestTypeActionPropEnum = append(modelUpdateChallengeScheduleRequestTypeActionPropEnum, v)
	}
}

const (

	// ModelUpdateChallengeScheduleRequestActionACCELERATE captures enum value "ACCELERATE"
	ModelUpdateChallengeScheduleRequestActionACCELERATE string = "ACCELERATE"

	// ModelUpdateChallengeScheduleRequestActionSTOP captures enum value "STOP"
	ModelUpdateChallengeScheduleRequestActionSTOP string = "STOP"
)

// prop value enum
func (m *ModelUpdateChallengeScheduleRequest) validateActionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelUpdateChallengeScheduleRequestTypeActionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelUpdateChallengeScheduleRequest) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	// value enum
	if err := m.validateActionEnum("action", "body", *m.Action); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUpdateChallengeScheduleRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUpdateChallengeScheduleRequest) UnmarshalBinary(b []byte) error {
	var res ModelUpdateChallengeScheduleRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
