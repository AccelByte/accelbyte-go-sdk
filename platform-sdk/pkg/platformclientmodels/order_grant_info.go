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

// OrderGrantInfo Order grant info
//
// swagger:model Order grant info.
type OrderGrantInfo struct {

	// Order credit list
	Credits []*CreditSummary `json:"credits,omitempty"`

	// Order entitlement list
	Entitlements []*EntitlementSummary `json:"entitlements,omitempty"`
}

// Validate validates this Order grant info
func (m *OrderGrantInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *OrderGrantInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderGrantInfo) UnmarshalBinary(b []byte) error {
	var res OrderGrantInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
