// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelFieldUpdateAllowStatus Model field update allow status
//
// swagger:model Model field update allow status.
type ModelFieldUpdateAllowStatus struct {

	// allow value [dob, username, display_name, country]
	// Required: true
	Field *string `json:"field"`

	// 1. will have value if the type is limited 2. the milliseconds time of next available edit time 3. if it does not have value, it means it is allow to edit now
	// Format: int64
	NextAvailableEditTime int64 `json:"nextAvailableEditTime,omitempty"`

	// 1. will have value if the type is limited 2. the remaining seconds that need wait until user can edit this field. 3. the value O means it is allow to edit now
	// Format: int64
	RemainingTimeInSeconds int64 `json:"remainingTimeInSeconds,omitempty"`

	// allow value [initial_only, limited, unlimited]
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Model field update allow status
func (m *ModelFieldUpdateAllowStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateField(formats); err != nil {
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

func (m *ModelFieldUpdateAllowStatus) validateField(formats strfmt.Registry) error {

	if err := validate.Required("field", "body", m.Field); err != nil {
		return err
	}

	return nil
}

func (m *ModelFieldUpdateAllowStatus) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelFieldUpdateAllowStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelFieldUpdateAllowStatus) UnmarshalBinary(b []byte) error {
	var res ModelFieldUpdateAllowStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
