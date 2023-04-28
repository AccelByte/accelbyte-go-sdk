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

// ModelsUpdateRuleset Models update ruleset
//
// swagger:model Models update ruleset.
type ModelsUpdateRuleset struct {

	// alliance
	// Required: true
	Alliance *ModelsUpdateAllianceRule `json:"alliance"`

	// alliance_flexing_rule
	// Required: true
	AllianceFlexingRule []*ModelsAllianceFlexingRule `json:"alliance_flexing_rule"`

	// flexingrules
	FlexingRules []*ModelsFlexingRule `json:"flexingRules,omitempty"`

	// match_options
	MatchOptions *ModelsMatchOptionRule `json:"match_options,omitempty"`

	// matchingrules
	MatchingRules []*ModelsMatchingRule `json:"matchingRules,omitempty"`

	// sub_game_modes
	SubGameModes ModelsUpdateRulesetSubGameModes `json:"sub_game_modes,omitempty"`
}

// Validate validates this Models update ruleset
func (m *ModelsUpdateRuleset) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAlliance(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAllianceFlexingRule(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateRuleset) validateAlliance(formats strfmt.Registry) error {

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

func (m *ModelsUpdateRuleset) validateAllianceFlexingRule(formats strfmt.Registry) error {

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

// MarshalBinary interface implementation
func (m *ModelsUpdateRuleset) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateRuleset) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateRuleset
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
