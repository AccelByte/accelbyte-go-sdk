// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCombination Models combination
//
// swagger:model Models combination.
type ModelsCombination struct {

	// alliances
	// Required: true
	Alliances [][]*ModelsRole `json:"alliances"`

	// has_combination
	// Required: true
	HasCombination *bool `json:"has_combination"`

	// role_flexing_enable
	// Required: true
	RoleFlexingEnable *bool `json:"role_flexing_enable"`

	// role_flexing_player
	// Required: true
	// Format: int32
	RoleFlexingPlayer *int32 `json:"role_flexing_player"`

	// role_flexing_second
	// Required: true
	// Format: int32
	RoleFlexingSecond *int32 `json:"role_flexing_second"`
}

// Validate validates this Models combination
func (m *ModelsCombination) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAlliances(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHasCombination(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoleFlexingEnable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoleFlexingPlayer(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoleFlexingSecond(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCombination) validateAlliances(formats strfmt.Registry) error {

	if err := validate.Required("alliances", "body", m.Alliances); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCombination) validateHasCombination(formats strfmt.Registry) error {

	if err := validate.Required("has_combination", "body", m.HasCombination); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCombination) validateRoleFlexingEnable(formats strfmt.Registry) error {

	if err := validate.Required("role_flexing_enable", "body", m.RoleFlexingEnable); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCombination) validateRoleFlexingPlayer(formats strfmt.Registry) error {

	if err := validate.Required("role_flexing_player", "body", m.RoleFlexingPlayer); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCombination) validateRoleFlexingSecond(formats strfmt.Registry) error {

	if err := validate.Required("role_flexing_second", "body", m.RoleFlexingSecond); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCombination) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCombination) UnmarshalBinary(b []byte) error {
	var res ModelsCombination
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
