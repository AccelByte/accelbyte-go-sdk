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

// BulkStatItemReset Bulk stat item reset
//
// swagger:model Bulk stat item reset.
type BulkStatItemReset struct {

	// statcode
	// Required: true
	StatCode *string `json:"statCode"`
}

// Validate validates this Bulk stat item reset
func (m *BulkStatItemReset) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *BulkStatItemReset) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *BulkStatItemReset) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkStatItemReset) UnmarshalBinary(b []byte) error {
	var res BulkStatItemReset
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
