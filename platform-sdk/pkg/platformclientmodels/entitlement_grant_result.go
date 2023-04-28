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

// EntitlementGrantResult Entitlement grant result
//
// swagger:model Entitlement grant result.
type EntitlementGrantResult struct {

	// entitlementgrants
	EntitlementGrants *EntitlementGrant `json:"entitlementGrants,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Entitlement grant result
func (m *EntitlementGrantResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementGrantResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementGrantResult) UnmarshalBinary(b []byte) error {
	var res EntitlementGrantResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
