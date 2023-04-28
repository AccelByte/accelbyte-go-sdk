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

// EntitlementRevokeResult Entitlement revoke result
//
// swagger:model Entitlement revoke result.
type EntitlementRevokeResult struct {

	// entitlementid
	EntitlementID string `json:"entitlementId,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Entitlement revoke result
func (m *EntitlementRevokeResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementRevokeResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementRevokeResult) UnmarshalBinary(b []byte) error {
	var res EntitlementRevokeResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
