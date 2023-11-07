// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RevokeEntitlementPayload Revoke entitlement payload
//
// swagger:model Revoke entitlement payload.
type RevokeEntitlementPayload struct {

	// count
	// Format: int32
	Count int32 `json:"count,omitempty"`

	// entitlementid
	// Required: true
	EntitlementID *string `json:"entitlementId"`
}

// Validate validates this Revoke entitlement payload
func (m *RevokeEntitlementPayload) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEntitlementID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RevokeEntitlementPayload) validateEntitlementID(formats strfmt.Registry) error {

	if err := validate.Required("entitlementId", "body", m.EntitlementID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RevokeEntitlementPayload) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevokeEntitlementPayload) UnmarshalBinary(b []byte) error {
	var res RevokeEntitlementPayload
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
