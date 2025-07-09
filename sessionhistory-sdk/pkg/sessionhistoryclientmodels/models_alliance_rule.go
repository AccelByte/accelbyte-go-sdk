// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAllianceRule Models alliance rule
//
// swagger:model Models alliance rule.
type ModelsAllianceRule struct {

	// max_number
	// Required: true
	// Format: int32
	MaxNumber *int32 `json:"max_number"`

	// min_number
	// Required: true
	// Format: int32
	MinNumber *int32 `json:"min_number"`

	// player_max_number
	// Required: true
	// Format: int32
	PlayerMaxNumber *int32 `json:"player_max_number"`

	// player_min_number
	// Required: true
	// Format: int32
	PlayerMinNumber *int32 `json:"player_min_number"`
}

// Validate validates this Models alliance rule
func (m *ModelsAllianceRule) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxNumber(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinNumber(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlayerMaxNumber(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlayerMinNumber(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAllianceRule) validateMaxNumber(formats strfmt.Registry) error {

	if err := validate.Required("max_number", "body", m.MaxNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceRule) validateMinNumber(formats strfmt.Registry) error {

	if err := validate.Required("min_number", "body", m.MinNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceRule) validatePlayerMaxNumber(formats strfmt.Registry) error {

	if err := validate.Required("player_max_number", "body", m.PlayerMaxNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceRule) validatePlayerMinNumber(formats strfmt.Registry) error {

	if err := validate.Required("player_min_number", "body", m.PlayerMinNumber); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAllianceRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAllianceRule) UnmarshalBinary(b []byte) error {
	var res ModelsAllianceRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
