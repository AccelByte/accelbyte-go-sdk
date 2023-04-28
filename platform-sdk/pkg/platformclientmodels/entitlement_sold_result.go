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

// EntitlementSoldResult Entitlement sold result
//
// swagger:model Entitlement sold result.
type EntitlementSoldResult struct {

	// creditSummaries, The money from the sale
	CreditSummaries []*CreditSummary `json:"creditSummaries,omitempty"`

	// The entitlement information after the sale
	EntitlementInfo *EntitlementInfo `json:"entitlementInfo,omitempty"`

	// replayed, if true,the response is original successful response. This will not be included in response if client have not pass request id.
	Replayed bool `json:"replayed"`

	// request id
	RequestID string `json:"requestId,omitempty"`
}

// Validate validates this Entitlement sold result
func (m *EntitlementSoldResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementSoldResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementSoldResult) UnmarshalBinary(b []byte) error {
	var res EntitlementSoldResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
