// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ConditionGroup Condition group
//
// swagger:model Condition group.
type ConditionGroup struct {

	// predicate operator, default is and
	// Enum: ['and', 'or']
	Operator string `json:"operator,omitempty"`

	// predicate list
	Predicates []*Predicate `json:"predicates,omitempty"`
}

// Validate validates this Condition group
func (m *ConditionGroup) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var conditionGroupTypeOperatorPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AND", "OR"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		conditionGroupTypeOperatorPropEnum = append(conditionGroupTypeOperatorPropEnum, v)
	}
}

const (

	// ConditionGroupOperatorAND captures enum value "AND"
	ConditionGroupOperatorAND string = "AND"

	// ConditionGroupOperatorOR captures enum value "OR"
	ConditionGroupOperatorOR string = "OR"
)

// prop value enum
func (m *ConditionGroup) validateOperatorEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, conditionGroupTypeOperatorPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ConditionGroup) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ConditionGroup) UnmarshalBinary(b []byte) error {
	var res ConditionGroup
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
