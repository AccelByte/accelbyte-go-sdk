// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsSubGameMode Models sub game mode
//
// swagger:model Models sub game mode.
type ModelsSubGameMode struct {

	// alliance
	// Required: true
	Alliance *ModelsAllianceRule `json:"alliance"`

	// alliance_flexing_rule
	// Required: true
	AllianceFlexingRule []*ModelsAllianceFlexingRule `json:"alliance_flexing_rule"`

	// name
	// Required: true
	Name string `json:"name"`
}

// Validate validates this Models sub game mode
func (m *ModelsSubGameMode) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAlliance(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAllianceFlexingRule(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsSubGameMode) validateAlliance(formats strfmt.Registry) error {

	if err := validate.Required("alliance", "body", m.Alliance); err != nil {
		return err
	}

	if m.Alliance != nil {
		if err := m.Alliance.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("alliance")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsSubGameMode) validateAllianceFlexingRule(formats strfmt.Registry) error {

	if err := validate.Required("alliance_flexing_rule", "body", m.AllianceFlexingRule); err != nil {
		return err
	}

	for i := 0; i < len(m.AllianceFlexingRule); i++ {
		if swag.IsZero(m.AllianceFlexingRule[i]) { // not required
			continue
		}

		if m.AllianceFlexingRule[i] != nil {
			if err := m.AllianceFlexingRule[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("alliance_flexing_rule" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsSubGameMode) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSubGameMode) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSubGameMode) UnmarshalBinary(b []byte) error {
	var res ModelsSubGameMode
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
