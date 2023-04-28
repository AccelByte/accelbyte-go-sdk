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

// Predicate Predicate
//
// swagger:model Predicate.
type Predicate struct {

	// anyOf, only available if comparison is includes or excludes
	// Format: int32
	AnyOf int32 `json:"anyOf,omitempty"`

	// comparison
	// Enum: ['excludes', 'includes', 'is', 'isGreaterThan', 'isGreaterThanOrEqual', 'isLessThan', 'isLessThanOrEqual', 'isNot']
	Comparison string `json:"comparison,omitempty"`

	// predicate name
	Name string `json:"name,omitempty"`

	// predicate type
	// Enum: ['EntitlementPredicate', 'SeasonPassPredicate', 'SeasonTierPredicate']
	PredicateType string `json:"predicateType,omitempty"`

	// value, pass check value when predicateType is SeasonTierPredicate
	Value string `json:"value,omitempty"`

	// values, pass check value when predicateType is EntitlementPredicate or SeasonPassPredicateEntitlementPredicate requires item sku list, SeasonPassPredicate requires pass code list
	// Unique: true
	Values []string `json:"values"`
}

// Validate validates this Predicate
func (m *Predicate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var predicateTypeComparisonPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EXCLUDES", "INCLUDES", "IS", "ISGREATERTHAN", "ISGREATERTHANOREQUAL", "ISLESSTHAN", "ISLESSTHANOREQUAL", "ISNOT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		predicateTypeComparisonPropEnum = append(predicateTypeComparisonPropEnum, v)
	}
}

const (

	// PredicateComparisonEXCLUDES captures enum value "EXCLUDES"
	PredicateComparisonEXCLUDES string = "EXCLUDES"

	// PredicateComparisonINCLUDES captures enum value "INCLUDES"
	PredicateComparisonINCLUDES string = "INCLUDES"

	// PredicateComparisonIS captures enum value "IS"
	PredicateComparisonIS string = "IS"

	// PredicateComparisonISGREATERTHAN captures enum value "ISGREATERTHAN"
	PredicateComparisonISGREATERTHAN string = "ISGREATERTHAN"

	// PredicateComparisonISGREATERTHANOREQUAL captures enum value "ISGREATERTHANOREQUAL"
	PredicateComparisonISGREATERTHANOREQUAL string = "ISGREATERTHANOREQUAL"

	// PredicateComparisonISLESSTHAN captures enum value "ISLESSTHAN"
	PredicateComparisonISLESSTHAN string = "ISLESSTHAN"

	// PredicateComparisonISLESSTHANOREQUAL captures enum value "ISLESSTHANOREQUAL"
	PredicateComparisonISLESSTHANOREQUAL string = "ISLESSTHANOREQUAL"

	// PredicateComparisonISNOT captures enum value "ISNOT"
	PredicateComparisonISNOT string = "ISNOT"
)

// prop value enum
func (m *Predicate) validateComparisonEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, predicateTypeComparisonPropEnum, true); err != nil {
		return err
	}
	return nil
}

var predicateTypePredicateTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ENTITLEMENTPREDICATE", "SEASONPASSPREDICATE", "SEASONTIERPREDICATE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		predicateTypePredicateTypePropEnum = append(predicateTypePredicateTypePropEnum, v)
	}
}

const (

	// PredicatePredicateTypeENTITLEMENTPREDICATE captures enum value "ENTITLEMENTPREDICATE"
	PredicatePredicateTypeENTITLEMENTPREDICATE string = "ENTITLEMENTPREDICATE"

	// PredicatePredicateTypeSEASONPASSPREDICATE captures enum value "SEASONPASSPREDICATE"
	PredicatePredicateTypeSEASONPASSPREDICATE string = "SEASONPASSPREDICATE"

	// PredicatePredicateTypeSEASONTIERPREDICATE captures enum value "SEASONTIERPREDICATE"
	PredicatePredicateTypeSEASONTIERPREDICATE string = "SEASONTIERPREDICATE"
)

// prop value enum
func (m *Predicate) validatePredicateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, predicateTypePredicateTypePropEnum, true); err != nil {
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
