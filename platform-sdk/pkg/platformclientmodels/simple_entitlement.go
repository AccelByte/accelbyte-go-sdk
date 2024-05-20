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

// SimpleEntitlement Simple entitlement
//
// swagger:model Simple entitlement.
type SimpleEntitlement struct {

	// entitlementid
	EntitlementID string `json:"entitlementId,omitempty"`

	// grantedcode
	GrantedCode string `json:"grantedCode,omitempty"`

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// itemnamespace
	ItemNamespace string `json:"itemNamespace,omitempty"`

	// name
	Name string `json:"name,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// origin
	Origin string `json:"origin,omitempty"`

	// sku
	Sku string `json:"sku,omitempty"`

	// usecount
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Simple entitlement
func (m *SimpleEntitlement) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *SimpleEntitlement) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SimpleEntitlement) UnmarshalBinary(b []byte) error {
	var res SimpleEntitlement
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
