// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboardclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMonthlyConfig Models monthly config
//
// swagger:model Models monthly config.
type ModelsMonthlyConfig struct {

	// resetdate
	// Required: true
	// Format: integer
	ResetDate *int64 `json:"resetDate"`

	// resettime
	// Required: true
	ResetTime *string `json:"resetTime"`
}

// Validate validates this Models monthly config
func (m *ModelsMonthlyConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateResetDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResetTime(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMonthlyConfig) validateResetDate(formats strfmt.Registry) error {

	if err := validate.Required("resetDate", "body", m.ResetDate); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMonthlyConfig) validateResetTime(formats strfmt.Registry) error {

	if err := validate.Required("resetTime", "body", m.ResetTime); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMonthlyConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMonthlyConfig) UnmarshalBinary(b []byte) error {
	var res ModelsMonthlyConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
