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

// PurchaseConditionUpdate Purchase condition update
//
// swagger:model Purchase condition update.
type PurchaseConditionUpdate struct {

	// purchase condition
	PurchaseCondition *PurchaseCondition `json:"purchaseCondition,omitempty"`
}

// Validate validates this Purchase condition update
func (m *PurchaseConditionUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PurchaseConditionUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PurchaseConditionUpdate) UnmarshalBinary(b []byte) error {
	var res PurchaseConditionUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
