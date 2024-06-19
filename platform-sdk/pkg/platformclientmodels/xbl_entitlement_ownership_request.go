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

// XblEntitlementOwnershipRequest Xbl entitlement ownership request
//
// swagger:model Xbl entitlement ownership request.
type XblEntitlementOwnershipRequest struct {

	// delegationtoken
	DelegationToken string `json:"delegationToken,omitempty"`

	// sandboxid
	SandboxID string `json:"sandboxId,omitempty"`
}

// Validate validates this Xbl entitlement ownership request
func (m *XblEntitlementOwnershipRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *XblEntitlementOwnershipRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XblEntitlementOwnershipRequest) UnmarshalBinary(b []byte) error {
	var res XblEntitlementOwnershipRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
