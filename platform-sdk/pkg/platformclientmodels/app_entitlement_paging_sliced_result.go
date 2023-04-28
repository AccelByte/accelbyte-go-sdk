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

// AppEntitlementPagingSlicedResult App entitlement paging sliced result
//
// swagger:model App entitlement paging sliced result.
type AppEntitlementPagingSlicedResult struct {

	// data
	Data []*AppEntitlementInfo `json:"data,omitempty"`

	// paging
	Paging *Paging `json:"paging,omitempty"`
}

// Validate validates this App entitlement paging sliced result
func (m *AppEntitlementPagingSlicedResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AppEntitlementPagingSlicedResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AppEntitlementPagingSlicedResult) UnmarshalBinary(b []byte) error {
	var res AppEntitlementPagingSlicedResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
