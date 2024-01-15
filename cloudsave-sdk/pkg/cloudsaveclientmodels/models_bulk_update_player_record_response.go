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

// ModelsBulkUpdatePlayerRecordResponse Models bulk update player record response
//
// swagger:model Models bulk update player record response.
type ModelsBulkUpdatePlayerRecordResponse struct {

	// Detail if the update operation failed
	// Required: true
	Detail interface{} `json:"detail"`

	// Player record identifier
	// Required: true
	Key *string `json:"key"`

	// Success state of the update operation
	// Required: true
	Success *bool `json:"success"`
}

// Validate validates this Models bulk update player record response
func (m *ModelsBulkUpdatePlayerRecordResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateKey(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSuccess(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBulkUpdatePlayerRecordResponse) validateKey(formats strfmt.Registry) error {

	if err := validate.Required("key", "body", m.Key); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBulkUpdatePlayerRecordResponse) validateSuccess(formats strfmt.Registry) error {

	if err := validate.Required("success", "body", m.Success); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBulkUpdatePlayerRecordResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBulkUpdatePlayerRecordResponse) UnmarshalBinary(b []byte) error {
	var res ModelsBulkUpdatePlayerRecordResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
