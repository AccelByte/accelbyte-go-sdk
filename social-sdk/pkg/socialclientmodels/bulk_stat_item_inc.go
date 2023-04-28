// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// BulkStatItemInc Bulk stat item inc
//
// swagger:model Bulk stat item inc.
type BulkStatItemInc struct {

	// inc
	// Format: double
	Inc float64 `json:"inc,omitempty"`

	// statcode
	// Required: true
	StatCode *string `json:"statCode"`
}

// Validate validates this Bulk stat item inc
func (m *BulkStatItemInc) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *BulkStatItemInc) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *BulkStatItemInc) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkStatItemInc) UnmarshalBinary(b []byte) error {
	var res BulkStatItemInc
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
