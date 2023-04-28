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

// TaxResult Tax result
//
// swagger:model Tax result.
type TaxResult struct {

	// if enable tax
	EnableTax bool `json:"enableTax"`

	// formattedTax
	FormattedTax string `json:"formattedTax,omitempty"`

	// state
	State string `json:"state,omitempty"`

	// tax
	// Format: int32
	Tax int32 `json:"tax,omitempty"`
}

// Validate validates this Tax result
func (m *TaxResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *TaxResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TaxResult) UnmarshalBinary(b []byte) error {
	var res TaxResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
