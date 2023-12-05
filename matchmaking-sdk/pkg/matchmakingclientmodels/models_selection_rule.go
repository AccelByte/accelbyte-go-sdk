// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsSelectionRule Models selection rule
//
// swagger:model Models selection rule.
type ModelsSelectionRule struct {

	// selection
	// Enum: ['newest', 'oldest', 'pivot', 'random']
	// Required: true
	Selection *string `json:"selection"`

	// threshold
	// Required: true
	// Format: int64
	Threshold *int64 `json:"threshold"`
}

// Validate validates this Models selection rule
func (m *ModelsSelectionRule) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSelection(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateThreshold(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelsSelectionRuleTypeSelectionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["NEWEST", "OLDEST", "PIVOT", "RANDOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsSelectionRuleTypeSelectionPropEnum = append(modelsSelectionRuleTypeSelectionPropEnum, v)
	}
}

const (

	// ModelsSelectionRuleSelectionNEWEST captures enum value "NEWEST"
	ModelsSelectionRuleSelectionNEWEST string = "NEWEST"

	// ModelsSelectionRuleSelectionOLDEST captures enum value "OLDEST"
	ModelsSelectionRuleSelectionOLDEST string = "OLDEST"

	// ModelsSelectionRuleSelectionPIVOT captures enum value "PIVOT"
	ModelsSelectionRuleSelectionPIVOT string = "PIVOT"

	// ModelsSelectionRuleSelectionRANDOM captures enum value "RANDOM"
	ModelsSelectionRuleSelectionRANDOM string = "RANDOM"
)

// prop value enum
func (m *ModelsSelectionRule) validateSelectionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsSelectionRuleTypeSelectionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsSelectionRule) validateSelection(formats strfmt.Registry) error {

	if err := validate.Required("selection", "body", m.Selection); err != nil {
		return err
	}

	// value enum
	if err := m.validateSelectionEnum("selection", "body", *m.Selection); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSelectionRule) validateThreshold(formats strfmt.Registry) error {

	if err := validate.Required("threshold", "body", m.Threshold); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSelectionRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSelectionRule) UnmarshalBinary(b []byte) error {
	var res ModelsSelectionRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
