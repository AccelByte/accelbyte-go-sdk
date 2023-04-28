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

// ConditionMatchResult Condition match result
//
// swagger:model Condition match result.
type ConditionMatchResult struct {

	// matched
	Matched bool `json:"matched"`

	// matchedconditions
	MatchedConditions []map[string]interface{} `json:"matchedConditions,omitempty"`

	// notmatchreason
	NotMatchReason string `json:"notMatchReason,omitempty"`
}

// Validate validates this Condition match result
func (m *ConditionMatchResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ConditionMatchResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ConditionMatchResult) UnmarshalBinary(b []byte) error {
	var res ConditionMatchResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
