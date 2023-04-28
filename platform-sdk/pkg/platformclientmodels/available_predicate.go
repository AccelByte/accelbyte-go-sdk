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

// AvailablePredicate Available predicate
//
// swagger:model Available predicate.
type AvailablePredicate struct {

	// available comparison list
	AvailableComparisons []*AvailableComparison `json:"availableComparisons,omitempty"`

	// available predicate type
	// Enum: ['EntitlementPredicate', 'SeasonPassPredicate', 'SeasonTierPredicate']
	PredicateType string `json:"predicateType,omitempty"`

	// whether show any of on config page
	ShowAnyOf bool `json:"showAnyOf"`

	// predicate value type
	// Enum: ['List', 'Number', 'String']
	ValueType string `json:"valueType,omitempty"`
}

// Validate validates this Available predicate
func (m *AvailablePredicate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var availablePredicateTypePredicateTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ENTITLEMENTPREDICATE", "SEASONPASSPREDICATE", "SEASONTIERPREDICATE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		availablePredicateTypePredicateTypePropEnum = append(availablePredicateTypePredicateTypePropEnum, v)
	}
}

const (

	// AvailablePredicatePredicateTypeENTITLEMENTPREDICATE captures enum value "ENTITLEMENTPREDICATE"
	AvailablePredicatePredicateTypeENTITLEMENTPREDICATE string = "ENTITLEMENTPREDICATE"

	// AvailablePredicatePredicateTypeSEASONPASSPREDICATE captures enum value "SEASONPASSPREDICATE"
	AvailablePredicatePredicateTypeSEASONPASSPREDICATE string = "SEASONPASSPREDICATE"

	// AvailablePredicatePredicateTypeSEASONTIERPREDICATE captures enum value "SEASONTIERPREDICATE"
	AvailablePredicatePredicateTypeSEASONTIERPREDICATE string = "SEASONTIERPREDICATE"
)

// prop value enum
func (m *AvailablePredicate) validatePredicateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, availablePredicateTypePredicateTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var availablePredicateTypeValueTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["LIST", "NUMBER", "STRING"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		availablePredicateTypeValueTypePropEnum = append(availablePredicateTypeValueTypePropEnum, v)
	}
}

const (

	// AvailablePredicateValueTypeLIST captures enum value "LIST"
	AvailablePredicateValueTypeLIST string = "LIST"

	// AvailablePredicateValueTypeNUMBER captures enum value "NUMBER"
	AvailablePredicateValueTypeNUMBER string = "NUMBER"

	// AvailablePredicateValueTypeSTRING captures enum value "STRING"
	AvailablePredicateValueTypeSTRING string = "STRING"
)

// prop value enum
func (m *AvailablePredicate) validateValueTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, availablePredicateTypeValueTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AvailablePredicate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AvailablePredicate) UnmarshalBinary(b []byte) error {
	var res AvailablePredicate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
