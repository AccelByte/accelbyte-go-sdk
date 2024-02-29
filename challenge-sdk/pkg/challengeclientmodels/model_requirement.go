// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelRequirement Model requirement
//
// swagger:model Model requirement.
type ModelRequirement struct {

	// operator
	// Enum: ['AND']
	// Required: true
	Operator *string `json:"operator"`

	// predicates
	// Required: true
	Predicates []*ModelPredicate `json:"predicates"`
}

// Validate validates this Model requirement
func (m *ModelRequirement) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateOperator(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePredicates(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelRequirementTypeOperatorPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AND"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelRequirementTypeOperatorPropEnum = append(modelRequirementTypeOperatorPropEnum, v)
	}
}

const (

	// ModelRequirementOperatorAND captures enum value "AND"
	ModelRequirementOperatorAND string = "AND"
)

// prop value enum
func (m *ModelRequirement) validateOperatorEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelRequirementTypeOperatorPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelRequirement) validateOperator(formats strfmt.Registry) error {

	if err := validate.Required("operator", "body", m.Operator); err != nil {
		return err
	}

	// value enum
	if err := m.validateOperatorEnum("operator", "body", *m.Operator); err != nil {
		return err
	}

	return nil
}

func (m *ModelRequirement) validatePredicates(formats strfmt.Registry) error {

	if err := validate.Required("predicates", "body", m.Predicates); err != nil {
		return err
	}

	for i := 0; i < len(m.Predicates); i++ {
		if swag.IsZero(m.Predicates[i]) { // not required
			continue
		}

		if m.Predicates[i] != nil {
			if err := m.Predicates[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("predicates" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRequirement) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRequirement) UnmarshalBinary(b []byte) error {
	var res ModelRequirement
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
