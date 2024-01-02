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

// AdminEntitlementSoldRequest Admin entitlement sold request
//
// swagger:model Admin entitlement sold request.
type AdminEntitlementSoldRequest struct {

	// user platform
	Platform string `json:"platform,omitempty"`

	// Request id(Optional), client should provide a unique request id to perform at most once execution, When a request id is resubmitted, it will return original successful response
	RequestID string `json:"requestId,omitempty"`

	// the use count to sell, 1 for default, durable entitlement only allow 1
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Admin entitlement sold request
func (m *AdminEntitlementSoldRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AdminEntitlementSoldRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AdminEntitlementSoldRequest) UnmarshalBinary(b []byte) error {
	var res AdminEntitlementSoldRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
