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

// EntitlementSplitResult Entitlement split result
//
// swagger:model Entitlement split result.
type EntitlementSplitResult struct {

	// Source entitlement info after split
	Source *EntitlementInfo `json:"source,omitempty"`

	// Target entitlement info after split
	Target *EntitlementInfo `json:"target,omitempty"`
}

// Validate validates this Entitlement split result
func (m *EntitlementSplitResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementSplitResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementSplitResult) UnmarshalBinary(b []byte) error {
	var res EntitlementSplitResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
