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

// StatItemValue Stat item value
//
// swagger:model Stat item value.
type StatItemValue struct {

	// created at
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// updated at
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// user id
	UserID string `json:"userId,omitempty"`

	// current value
	// Format: double
	Value float64 `json:"value,omitempty"`
}

// Validate validates this Stat item value
func (m *StatItemValue) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *StatItemValue) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StatItemValue) UnmarshalBinary(b []byte) error {
	var res StatItemValue
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
