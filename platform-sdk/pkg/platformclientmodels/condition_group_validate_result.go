// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ConditionGroupValidateResult Condition group validate result
//
// swagger:model Condition group validate result.
type ConditionGroupValidateResult struct {

	// predicate validate details, list of predicate validate results
	PredicateValidateResults []*PredicateValidateResult `json:"predicateValidateResults,omitempty"`
}

// Validate validates this Condition group validate result
func (m *ConditionGroupValidateResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ConditionGroupValidateResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ConditionGroupValidateResult) UnmarshalBinary(b []byte) error {
	var res ConditionGroupValidateResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
