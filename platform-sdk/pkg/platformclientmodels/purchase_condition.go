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

// PurchaseCondition Purchase condition
//
// swagger:model Purchase condition.
type PurchaseCondition struct {

	// condition groups, the operator for condition group is 'or'
	ConditionGroups []*ConditionGroup `json:"conditionGroups,omitempty"`
}

// Validate validates this Purchase condition
func (m *PurchaseCondition) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PurchaseCondition) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PurchaseCondition) UnmarshalBinary(b []byte) error {
	var res PurchaseCondition
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
