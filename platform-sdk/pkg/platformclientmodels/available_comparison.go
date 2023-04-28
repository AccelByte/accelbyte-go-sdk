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

// AvailableComparison Available comparison
//
// swagger:model Available comparison.
type AvailableComparison struct {

	// available comparison
	// Enum: ['excludes', 'includes', 'is', 'isGreaterThan', 'isGreaterThanOrEqual', 'isLessThan', 'isLessThanOrEqual', 'isNot']
	Comparison string `json:"comparison,omitempty"`

	// comparison text
	Text string `json:"text,omitempty"`
}

// Validate validates this Available comparison
func (m *AvailableComparison) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var availableComparisonTypeComparisonPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EXCLUDES", "INCLUDES", "IS", "ISGREATERTHAN", "ISGREATERTHANOREQUAL", "ISLESSTHAN", "ISLESSTHANOREQUAL", "ISNOT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		availableComparisonTypeComparisonPropEnum = append(availableComparisonTypeComparisonPropEnum, v)
	}
}

const (

	// AvailableComparisonComparisonEXCLUDES captures enum value "EXCLUDES"
	AvailableComparisonComparisonEXCLUDES string = "EXCLUDES"

	// AvailableComparisonComparisonINCLUDES captures enum value "INCLUDES"
	AvailableComparisonComparisonINCLUDES string = "INCLUDES"

	// AvailableComparisonComparisonIS captures enum value "IS"
	AvailableComparisonComparisonIS string = "IS"

	// AvailableComparisonComparisonISGREATERTHAN captures enum value "ISGREATERTHAN"
	AvailableComparisonComparisonISGREATERTHAN string = "ISGREATERTHAN"

	// AvailableComparisonComparisonISGREATERTHANOREQUAL captures enum value "ISGREATERTHANOREQUAL"
	AvailableComparisonComparisonISGREATERTHANOREQUAL string = "ISGREATERTHANOREQUAL"

	// AvailableComparisonComparisonISLESSTHAN captures enum value "ISLESSTHAN"
	AvailableComparisonComparisonISLESSTHAN string = "ISLESSTHAN"

	// AvailableComparisonComparisonISLESSTHANOREQUAL captures enum value "ISLESSTHANOREQUAL"
	AvailableComparisonComparisonISLESSTHANOREQUAL string = "ISLESSTHANOREQUAL"

	// AvailableComparisonComparisonISNOT captures enum value "ISNOT"
	AvailableComparisonComparisonISNOT string = "ISNOT"
)

// prop value enum
func (m *AvailableComparison) validateComparisonEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, availableComparisonTypeComparisonPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AvailableComparison) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AvailableComparison) UnmarshalBinary(b []byte) error {
	var res AvailableComparison
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
