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

// EntitlementPagingSlicedResult Entitlement paging sliced result
//
// swagger:model Entitlement paging sliced result.
type EntitlementPagingSlicedResult struct {

	// data
	Data []*EntitlementInfo `json:"data,omitempty"`

	// paging
	Paging *Paging `json:"paging,omitempty"`
}

// Validate validates this Entitlement paging sliced result
func (m *EntitlementPagingSlicedResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementPagingSlicedResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementPagingSlicedResult) UnmarshalBinary(b []byte) error {
	var res EntitlementPagingSlicedResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
