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

// ModelsRuleSetV1 Models rule set V1
//
// swagger:model Models rule set V1.
type ModelsRuleSetV1 struct {

	// alliance
	// Required: true
	Alliance *ModelsAllianceRuleV1 `json:"alliance"`

	// alliance_flexing_rule
	// Required: true
	AllianceFlexingRule []*ModelsAllianceFlexingRule `json:"alliance_flexing_rule"`

	// flexingrules
	// Required: true
	FlexingRules []*ModelsFlexingRule `json:"flexingRules"`

	// match_options
	// Required: true
	MatchOptions *ModelsMatchOptionRule `json:"match_options"`

	// matchingrules
	// Required: true
	MatchingRules []*ModelsMatchingRule `json:"matchingRules"`

	// sub_game_modes
	// Required: true
	SubGameModes map[string]ModelsSubGameMode `json:"sub_game_modes"`
}

// Validate validates this Models rule set V1
func (m *ModelsRuleSetV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAlliance(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAllianceFlexingRule(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFlexingRules(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchOptions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchingRules(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsRuleSetV1) validateAlliance(formats strfmt.Registry) error {

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

func (m *ModelsRuleSetV1) validateAllianceFlexingRule(formats strfmt.Registry) error {

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

func (m *ModelsRuleSetV1) validateFlexingRules(formats strfmt.Registry) error {

	if err := validate.Required("flexingRules", "body", m.FlexingRules); err != nil {
		return err
	}

	for i := 0; i < len(m.FlexingRules); i++ {
		if swag.IsZero(m.FlexingRules[i]) { // not required
			continue
		}

		if m.FlexingRules[i] != nil {
			if err := m.FlexingRules[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("flexingRules" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsRuleSetV1) validateMatchOptions(formats strfmt.Registry) error {

	if err := validate.Required("match_options", "body", m.MatchOptions); err != nil {
		return err
	}

	if m.MatchOptions != nil {
		if err := m.MatchOptions.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("match_options")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsRuleSetV1) validateMatchingRules(formats strfmt.Registry) error {

	if err := validate.Required("matchingRules", "body", m.MatchingRules); err != nil {
		return err
	}

	for i := 0; i < len(m.MatchingRules); i++ {
		if swag.IsZero(m.MatchingRules[i]) { // not required
			continue
		}

		if m.MatchingRules[i] != nil {
			if err := m.MatchingRules[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("matchingRules" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsRuleSetV1) validateSubGameModes(formats strfmt.Registry) error {

	if err := validate.Required("sub_game_modes", "body", m.SubGameModes); err != nil {
		return err
	}

	for k := range m.SubGameModes {

		if err := validate.Required("sub_game_modes"+"."+k, "body", m.SubGameModes[k]); err != nil {
			return err
		}
		if val, ok := m.SubGameModes[k]; ok {
			if err := val.Validate(formats); err != nil {
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRuleSetV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRuleSetV1) UnmarshalBinary(b []byte) error {
	var res ModelsRuleSetV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
