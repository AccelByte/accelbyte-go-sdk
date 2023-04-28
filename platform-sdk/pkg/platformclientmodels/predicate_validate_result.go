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

// PredicateValidateResult Predicate validate result
//
// swagger:model Predicate validate result.
type PredicateValidateResult struct {

	// matched value list
	Matched []string `json:"matched,omitempty"`

	// predicate name
	PredicateName string `json:"predicateName,omitempty"`

	// unmatched value list
	Unmatched []string `json:"unmatched,omitempty"`

	// is validated
	Validated bool `json:"validated"`
}

// Validate validates this Predicate validate result
func (m *PredicateValidateResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PredicateValidateResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PredicateValidateResult) UnmarshalBinary(b []byte) error {
	var res PredicateValidateResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
