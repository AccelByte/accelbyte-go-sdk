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

// ModelsWeeklyConfig Models weekly config
//
// swagger:model Models weekly config.
type ModelsWeeklyConfig struct {

	// resetday
	// Required: true
	// Format: integer
	ResetDay *int64 `json:"resetDay"`

	// resettime
	// Required: true
	ResetTime *string `json:"resetTime"`
}

// Validate validates this Models weekly config
func (m *ModelsWeeklyConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateResetDay(formats); err != nil {
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

func (m *ModelsWeeklyConfig) validateResetDay(formats strfmt.Registry) error {

	if err := validate.Required("resetDay", "body", m.ResetDay); err != nil {
		return err
	}

	return nil
}

func (m *ModelsWeeklyConfig) validateResetTime(formats strfmt.Registry) error {

	if err := validate.Required("resetTime", "body", m.ResetTime); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsWeeklyConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsWeeklyConfig) UnmarshalBinary(b []byte) error {
	var res ModelsWeeklyConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
