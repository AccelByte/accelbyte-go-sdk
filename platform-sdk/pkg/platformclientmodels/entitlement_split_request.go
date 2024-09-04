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

// EntitlementSplitRequest Entitlement split request
//
// swagger:model Entitlement split request.
type EntitlementSplitRequest struct {

	// split metadata, It is not stored in the database, only forwarded to AGS event
	Metadata *PublicEntitlementMetadata `json:"metadata,omitempty"`

	// use count
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Entitlement split request
func (m *EntitlementSplitRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementSplitRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementSplitRequest) UnmarshalBinary(b []byte) error {
	var res EntitlementSplitRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
