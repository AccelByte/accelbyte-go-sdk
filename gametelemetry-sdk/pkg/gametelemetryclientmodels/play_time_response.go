// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gametelemetryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PlayTimeResponse Play time response
//
// swagger:model Play time response.
type PlayTimeResponse struct {

	// total_playtime
	// Required: true
	TotalPlaytime *float64 `json:"total_playtime"`
}

// Validate validates this Play time response
func (m *PlayTimeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTotalPlaytime(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PlayTimeResponse) validateTotalPlaytime(formats strfmt.Registry) error {

	if err := validate.Required("total_playtime", "body", m.TotalPlaytime); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PlayTimeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlayTimeResponse) UnmarshalBinary(b []byte) error {
	var res PlayTimeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
