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

// TimeZoneTrans Time zone trans
//
// swagger:model Time zone trans.
type TimeZoneTrans struct {

	// index
	// Required: true
	// Format: byte
	Index *int64 `json:"index"`

	// isstd
	// Required: true
	Isstd *bool `json:"isstd"`

	// isutc
	// Required: true
	Isutc *bool `json:"isutc"`

	// when
	// Required: true
	// Format: int64
	When *int64 `json:"when"`
}

// Validate validates this Time zone trans
func (m *TimeZoneTrans) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIndex(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsstd(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsutc(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateWhen(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TimeZoneTrans) validateIndex(formats strfmt.Registry) error {

	if err := validate.Required("index", "body", m.Index); err != nil {
		return err
	}

	return nil
}

func (m *TimeZoneTrans) validateIsstd(formats strfmt.Registry) error {

	if err := validate.Required("isstd", "body", m.Isstd); err != nil {
		return err
	}

	return nil
}

func (m *TimeZoneTrans) validateIsutc(formats strfmt.Registry) error {

	if err := validate.Required("isutc", "body", m.Isutc); err != nil {
		return err
	}

	return nil
}

func (m *TimeZoneTrans) validateWhen(formats strfmt.Registry) error {

	if err := validate.Required("when", "body", m.When); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TimeZoneTrans) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TimeZoneTrans) UnmarshalBinary(b []byte) error {
	var res TimeZoneTrans
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
