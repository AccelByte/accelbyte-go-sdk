// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsBulkGetAdminPlayerRecordRequest Models bulk get admin player record request
//
// swagger:model Models bulk get admin player record request.
type ModelsBulkGetAdminPlayerRecordRequest struct {

	// keys
	// Required: true
	Keys []string `json:"keys"`
}

// Validate validates this Models bulk get admin player record request
func (m *ModelsBulkGetAdminPlayerRecordRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateKeys(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBulkGetAdminPlayerRecordRequest) validateKeys(formats strfmt.Registry) error {

	if err := validate.Required("keys", "body", m.Keys); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBulkGetAdminPlayerRecordRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBulkGetAdminPlayerRecordRequest) UnmarshalBinary(b []byte) error {
	var res ModelsBulkGetAdminPlayerRecordRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
