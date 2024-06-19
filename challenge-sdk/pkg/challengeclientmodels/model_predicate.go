// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelPredicate Model predicate
//
// swagger:model Model predicate.
type ModelPredicate struct {

	// matcher
	// Enum: ['EQUAL', 'GREATER_THAN', 'GREATER_THAN_EQUAL', 'LESS_THAN', 'LESS_THAN_EQUAL']
	// Required: true
	Matcher *string `json:"matcher"`

	// parametername
	// Required: true
	ParameterName *string `json:"parameterName"`

	// parametertype
	// Enum: ['ACHIEVEMENT', 'ENTITLEMENT', 'STATISTIC', 'STATISTIC_CYCLE', 'USERACCOUNT']
	// Required: true
	ParameterType *string `json:"parameterType"`

	// statcycleid
	StatCycleID string `json:"statCycleId,omitempty"`

	// targetvalue
	// Required: true
	// Format: double
	TargetValue *float64 `json:"targetValue"`
}

// Validate validates this Model predicate
func (m *ModelPredicate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatcher(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateParameterName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateParameterType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelPredicateTypeMatcherPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EQUAL", "GREATER_THAN", "GREATER_THAN_EQUAL", "LESS_THAN", "LESS_THAN_EQUAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelPredicateTypeMatcherPropEnum = append(modelPredicateTypeMatcherPropEnum, v)
	}
}

const (

	// ModelPredicateMatcherEQUAL captures enum value "EQUAL"
	ModelPredicateMatcherEQUAL string = "EQUAL"

	// ModelPredicateMatcherGREATERTHAN captures enum value "GREATER_THAN"
	ModelPredicateMatcherGREATERTHAN string = "GREATER_THAN"

	// ModelPredicateMatcherGREATERTHANEQUAL captures enum value "GREATER_THAN_EQUAL"
	ModelPredicateMatcherGREATERTHANEQUAL string = "GREATER_THAN_EQUAL"

	// ModelPredicateMatcherLESSTHAN captures enum value "LESS_THAN"
	ModelPredicateMatcherLESSTHAN string = "LESS_THAN"

	// ModelPredicateMatcherLESSTHANEQUAL captures enum value "LESS_THAN_EQUAL"
	ModelPredicateMatcherLESSTHANEQUAL string = "LESS_THAN_EQUAL"
)

// prop value enum
func (m *ModelPredicate) validateMatcherEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelPredicateTypeMatcherPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelPredicate) validateMatcher(formats strfmt.Registry) error {

	if err := validate.Required("matcher", "body", m.Matcher); err != nil {
		return err
	}

	// value enum
	if err := m.validateMatcherEnum("matcher", "body", *m.Matcher); err != nil {
		return err
	}

	return nil
}

func (m *ModelPredicate) validateParameterName(formats strfmt.Registry) error {

	if err := validate.Required("parameterName", "body", m.ParameterName); err != nil {
		return err
	}

	return nil
}

var modelPredicateTypeParameterTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACHIEVEMENT", "ENTITLEMENT", "STATISTIC", "STATISTIC_CYCLE", "USERACCOUNT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelPredicateTypeParameterTypePropEnum = append(modelPredicateTypeParameterTypePropEnum, v)
	}
}

const (

	// ModelPredicateParameterTypeACHIEVEMENT captures enum value "ACHIEVEMENT"
	ModelPredicateParameterTypeACHIEVEMENT string = "ACHIEVEMENT"

	// ModelPredicateParameterTypeENTITLEMENT captures enum value "ENTITLEMENT"
	ModelPredicateParameterTypeENTITLEMENT string = "ENTITLEMENT"

	// ModelPredicateParameterTypeSTATISTIC captures enum value "STATISTIC"
	ModelPredicateParameterTypeSTATISTIC string = "STATISTIC"

	// ModelPredicateParameterTypeSTATISTICCYCLE captures enum value "STATISTIC_CYCLE"
	ModelPredicateParameterTypeSTATISTICCYCLE string = "STATISTIC_CYCLE"

	// ModelPredicateParameterTypeUSERACCOUNT captures enum value "USERACCOUNT"
	ModelPredicateParameterTypeUSERACCOUNT string = "USERACCOUNT"
)

// prop value enum
func (m *ModelPredicate) validateParameterTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelPredicateTypeParameterTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelPredicate) validateParameterType(formats strfmt.Registry) error {

	if err := validate.Required("parameterType", "body", m.ParameterType); err != nil {
		return err
	}

	// value enum
	if err := m.validateParameterTypeEnum("parameterType", "body", *m.ParameterType); err != nil {
		return err
	}

	return nil
}

func (m *ModelPredicate) validateTargetValue(formats strfmt.Registry) error {

	if err := validate.Required("targetValue", "body", m.TargetValue); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPredicate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPredicate) UnmarshalBinary(b []byte) error {
	var res ModelPredicate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
