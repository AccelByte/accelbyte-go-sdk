// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// StatUpdate Stat update
//
// swagger:model Stat update.
type StatUpdate struct {

	// cycleids
	// Unique: true
	CycleIds []string `json:"cycleIds"`

	// defaultvalue
	// Format: double
	DefaultValue float64 `json:"defaultValue,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// name
	Name string `json:"name,omitempty"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`
}

// Validate validates this Stat update
func (m *StatUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *StatUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StatUpdate) UnmarshalBinary(b []byte) error {
	var res StatUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
