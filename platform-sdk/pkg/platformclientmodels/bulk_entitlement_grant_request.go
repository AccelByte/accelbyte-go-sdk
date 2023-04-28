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

// BulkEntitlementGrantRequest Bulk entitlement grant request
//
// swagger:model Bulk entitlement grant request.
type BulkEntitlementGrantRequest struct {

	// entitlementgrantlist
	EntitlementGrantList []*EntitlementGrant `json:"entitlementGrantList,omitempty"`

	// userids
	// Unique: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Bulk entitlement grant request
func (m *BulkEntitlementGrantRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BulkEntitlementGrantRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkEntitlementGrantRequest) UnmarshalBinary(b []byte) error {
	var res BulkEntitlementGrantRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
