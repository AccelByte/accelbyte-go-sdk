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

// EntitlementTransferRequest Entitlement transfer request
//
// swagger:model Entitlement transfer request.
type EntitlementTransferRequest struct {

	// entitlement id
	EntitlementID string `json:"entitlementId,omitempty"`

	// useCount(optional). means transfer all of use count to target entitlement id if not pass.
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Entitlement transfer request
func (m *EntitlementTransferRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementTransferRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementTransferRequest) UnmarshalBinary(b []byte) error {
	var res EntitlementTransferRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
