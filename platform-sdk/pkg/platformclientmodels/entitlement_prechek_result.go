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

// EntitlementPrechekResult Entitlement prechek result
//
// swagger:model Entitlement prechek result.
type EntitlementPrechekResult struct {

	// isrevokepossible
	IsRevokePossible bool `json:"isRevokePossible"`
}

// Validate validates this Entitlement prechek result
func (m *EntitlementPrechekResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementPrechekResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementPrechekResult) UnmarshalBinary(b []byte) error {
	var res EntitlementPrechekResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
