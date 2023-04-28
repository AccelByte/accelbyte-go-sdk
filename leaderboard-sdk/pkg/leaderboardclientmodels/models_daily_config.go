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

// ModelsDailyConfig Models daily config
//
// swagger:model Models daily config.
type ModelsDailyConfig struct {

	// resettime
	// Required: true
	ResetTime *string `json:"resetTime"`
}

// Validate validates this Models daily config
func (m *ModelsDailyConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateResetTime(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDailyConfig) validateResetTime(formats strfmt.Registry) error {

	if err := validate.Required("resetTime", "body", m.ResetTime); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDailyConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDailyConfig) UnmarshalBinary(b []byte) error {
	var res ModelsDailyConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
