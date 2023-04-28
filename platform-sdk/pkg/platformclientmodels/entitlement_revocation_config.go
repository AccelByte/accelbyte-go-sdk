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

// EntitlementRevocationConfig Entitlement revocation config
//
// swagger:model Entitlement revocation config.
type EntitlementRevocationConfig struct {

	// consumable entitlement revocation config
	Consumable *ConsumableEntitlementRevocationConfig `json:"consumable,omitempty"`

	// durable entitlement revocation config
	Durable *DurableEntitlementRevocationConfig `json:"durable,omitempty"`
}

// Validate validates this Entitlement revocation config
func (m *EntitlementRevocationConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementRevocationConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementRevocationConfig) UnmarshalBinary(b []byte) error {
	var res EntitlementRevocationConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
