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

// AdditionalDataEntitlement Additional data entitlement
//
// swagger:model Additional data entitlement.
type AdditionalDataEntitlement struct {

	// clienttransaction
	ClientTransaction []*ClientTransaction `json:"clientTransaction,omitempty"`

	// entitlementid
	EntitlementID string `json:"entitlementId,omitempty"`

	// usagecount
	// Format: int32
	UsageCount int32 `json:"usageCount,omitempty"`
}

// Validate validates this Additional data entitlement
func (m *AdditionalDataEntitlement) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AdditionalDataEntitlement) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AdditionalDataEntitlement) UnmarshalBinary(b []byte) error {
	var res AdditionalDataEntitlement
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
