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

// EntitlementTransferResult Entitlement transfer result
//
// swagger:model Entitlement transfer result.
type EntitlementTransferResult struct {

	// Source entitlement info after transfer
	Source *EntitlementInfo `json:"source,omitempty"`

	// Target entitlement info after transfer
	Target *EntitlementInfo `json:"target,omitempty"`
}

// Validate validates this Entitlement transfer result
func (m *EntitlementTransferResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementTransferResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementTransferResult) UnmarshalBinary(b []byte) error {
	var res EntitlementTransferResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
