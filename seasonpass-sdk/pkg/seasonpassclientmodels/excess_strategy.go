// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ExcessStrategy Excess strategy
//
// swagger:model Excess strategy.
type ExcessStrategy struct {

	// virtual currency for grant, required while method is CURRENCY
	Currency string `json:"currency,omitempty"`

	// method while excess the final tier exp
	// Enum: ['CURRENCY', 'NONE']
	// Required: true
	Method *string `json:"method"`

	// percent per exp, required while method is CURRENCY
	// Format: int32
	PercentPerExp int32 `json:"percentPerExp,omitempty"`
}

// Validate validates this Excess strategy
func (m *ExcessStrategy) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMethod(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var excessStrategyTypeMethodPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CURRENCY", "NONE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		excessStrategyTypeMethodPropEnum = append(excessStrategyTypeMethodPropEnum, v)
	}
}

const (

	// ExcessStrategyMethodCURRENCY captures enum value "CURRENCY"
	ExcessStrategyMethodCURRENCY string = "CURRENCY"

	// ExcessStrategyMethodNONE captures enum value "NONE"
	ExcessStrategyMethodNONE string = "NONE"
)

// prop value enum
func (m *ExcessStrategy) validateMethodEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, excessStrategyTypeMethodPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ExcessStrategy) validateMethod(formats strfmt.Registry) error {

	if err := validate.Required("method", "body", m.Method); err != nil {
		return err
	}

	// value enum
	if err := m.validateMethodEnum("method", "body", *m.Method); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ExcessStrategy) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ExcessStrategy) UnmarshalBinary(b []byte) error {
	var res ExcessStrategy
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
