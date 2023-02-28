// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// Predicate predicate object
//
// swagger:model Predicate
type Predicate struct {

	// anyOf, only available if comparison is includes or excludes
	AnyOf int32 `json:"anyOf,omitempty"`

	// comparison
	// Enum: [excludes includes is isGreaterThan isGreaterThanOrEqual isLessThan isLessThanOrEqual isNot]
	Comparison string `json:"comparison,omitempty"`

	// predicate name
	Name string `json:"name,omitempty"`

	// predicate type
	// Enum: [EntitlementPredicate SeasonPassPredicate SeasonTierPredicate]
	PredicateType string `json:"predicateType,omitempty"`

	// value, pass check value when predicateType is SeasonTierPredicate
	Value string `json:"value,omitempty"`

	// values, pass check value when predicateType is EntitlementPredicate or SeasonPassPredicateEntitlementPredicate requires item sku list, SeasonPassPredicate requires pass code list
	// Unique: true
	Values []string `json:"values"`
}

// Validate validates this predicate
func (m *Predicate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateComparison(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePredicateType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateValues(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var predicateTypeComparisonPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["excludes","includes","is","isGreaterThan","isGreaterThanOrEqual","isLessThan","isLessThanOrEqual","isNot"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		predicateTypeComparisonPropEnum = append(predicateTypeComparisonPropEnum, v)
	}
}

const (

	// PredicateComparisonExcludes captures enum value "excludes"
	PredicateComparisonExcludes string = "excludes"

	// PredicateComparisonIncludes captures enum value "includes"
	PredicateComparisonIncludes string = "includes"

	// PredicateComparisonIs captures enum value "is"
	PredicateComparisonIs string = "is"

	// PredicateComparisonIsGreaterThan captures enum value "isGreaterThan"
	PredicateComparisonIsGreaterThan string = "isGreaterThan"

	// PredicateComparisonIsGreaterThanOrEqual captures enum value "isGreaterThanOrEqual"
	PredicateComparisonIsGreaterThanOrEqual string = "isGreaterThanOrEqual"

	// PredicateComparisonIsLessThan captures enum value "isLessThan"
	PredicateComparisonIsLessThan string = "isLessThan"

	// PredicateComparisonIsLessThanOrEqual captures enum value "isLessThanOrEqual"
	PredicateComparisonIsLessThanOrEqual string = "isLessThanOrEqual"

	// PredicateComparisonIsNot captures enum value "isNot"
	PredicateComparisonIsNot string = "isNot"
)

// prop value enum
func (m *Predicate) validateComparisonEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, predicateTypeComparisonPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *Predicate) validateComparison(formats strfmt.Registry) error {

	if swag.IsZero(m.Comparison) { // not required
		return nil
	}

	// value enum
	if err := m.validateComparisonEnum("comparison", "body", m.Comparison); err != nil {
		return err
	}

	return nil
}

var predicateTypePredicateTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EntitlementPredicate","SeasonPassPredicate","SeasonTierPredicate"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		predicateTypePredicateTypePropEnum = append(predicateTypePredicateTypePropEnum, v)
	}
}

const (

	// PredicatePredicateTypeEntitlementPredicate captures enum value "EntitlementPredicate"
	PredicatePredicateTypeEntitlementPredicate string = "EntitlementPredicate"

	// PredicatePredicateTypeSeasonPassPredicate captures enum value "SeasonPassPredicate"
	PredicatePredicateTypeSeasonPassPredicate string = "SeasonPassPredicate"

	// PredicatePredicateTypeSeasonTierPredicate captures enum value "SeasonTierPredicate"
	PredicatePredicateTypeSeasonTierPredicate string = "SeasonTierPredicate"
)

// prop value enum
func (m *Predicate) validatePredicateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, predicateTypePredicateTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *Predicate) validatePredicateType(formats strfmt.Registry) error {

	if swag.IsZero(m.PredicateType) { // not required
		return nil
	}

	// value enum
	if err := m.validatePredicateTypeEnum("predicateType", "body", m.PredicateType); err != nil {
		return err
	}

	return nil
}

func (m *Predicate) validateValues(formats strfmt.Registry) error {

	if swag.IsZero(m.Values) { // not required
		return nil
	}

	if err := validate.UniqueItems("values", "body", m.Values); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *Predicate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Predicate) UnmarshalBinary(b []byte) error {
	var res Predicate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}