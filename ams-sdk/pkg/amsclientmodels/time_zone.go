// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// TimeZone Time zone
//
// swagger:model Time zone.
type TimeZone struct {

	// isdst
	// Required: true
	IsDST *bool `json:"isDST"`

	// name
	// Required: true
	Name *string `json:"name"`

	// offset
	// Required: true
	// Format: int32
	Offset *int32 `json:"offset"`
}

// Validate validates this Time zone
func (m *TimeZone) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsDST(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOffset(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TimeZone) validateIsDST(formats strfmt.Registry) error {

	if err := validate.Required("isDST", "body", m.IsDST); err != nil {
		return err
	}

	return nil
}

func (m *TimeZone) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *TimeZone) validateOffset(formats strfmt.Registry) error {

	if err := validate.Required("offset", "body", m.Offset); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TimeZone) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TimeZone) UnmarshalBinary(b []byte) error {
	var res TimeZone
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
