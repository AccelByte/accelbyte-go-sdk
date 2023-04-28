// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsRuleInformation Models rule information
//
// swagger:model Models rule information.
type ModelsRuleInformation struct {

	// ruleattribute
	// Required: true
	RuleAttribute *string `json:"ruleAttribute"`

	// rulecriteria
	// Enum: ['EQUAL', 'MAXIMUM', 'MINIMUM']
	// Required: true
	RuleCriteria *string `json:"ruleCriteria"`

	// rulevalue
	// Required: true
	// Format: double
	RuleValue *float64 `json:"ruleValue"`
}

// Validate validates this Models rule information
func (m *ModelsRuleInformation) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRuleAttribute(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRuleCriteria(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRuleValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsRuleInformation) validateRuleAttribute(formats strfmt.Registry) error {

	if err := validate.Required("ruleAttribute", "body", m.RuleAttribute); err != nil {
		return err
	}

	return nil
}

var modelsRuleInformationTypeRuleCriteriaPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EQUAL", "MAXIMUM", "MINIMUM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsRuleInformationTypeRuleCriteriaPropEnum = append(modelsRuleInformationTypeRuleCriteriaPropEnum, v)
	}
}

const (

	// ModelsRuleInformationRuleCriteriaEQUAL captures enum value "EQUAL"
	ModelsRuleInformationRuleCriteriaEQUAL string = "EQUAL"

	// ModelsRuleInformationRuleCriteriaMAXIMUM captures enum value "MAXIMUM"
	ModelsRuleInformationRuleCriteriaMAXIMUM string = "MAXIMUM"

	// ModelsRuleInformationRuleCriteriaMINIMUM captures enum value "MINIMUM"
	ModelsRuleInformationRuleCriteriaMINIMUM string = "MINIMUM"
)

// prop value enum
func (m *ModelsRuleInformation) validateRuleCriteriaEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsRuleInformationTypeRuleCriteriaPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsRuleInformation) validateRuleCriteria(formats strfmt.Registry) error {

	if err := validate.Required("ruleCriteria", "body", m.RuleCriteria); err != nil {
		return err
	}

	// value enum
	if err := m.validateRuleCriteriaEnum("ruleCriteria", "body", *m.RuleCriteria); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRuleInformation) validateRuleValue(formats strfmt.Registry) error {

	if err := validate.Required("ruleValue", "body", m.RuleValue); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRuleInformation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRuleInformation) UnmarshalBinary(b []byte) error {
	var res ModelsRuleInformation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
