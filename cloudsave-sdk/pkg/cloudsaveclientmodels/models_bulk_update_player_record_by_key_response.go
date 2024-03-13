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

// ModelsBulkUpdatePlayerRecordByKeyResponse Models bulk update player record by key response
//
// swagger:model Models bulk update player record by key response.
type ModelsBulkUpdatePlayerRecordByKeyResponse struct {

	// Detail if the update operation failed
	// Required: true
	Detail interface{} `json:"detail"`

	// Success state of the update operation
	// Required: true
	Success *bool `json:"success"`

	// User ID who owns the record
	// Required: true
	UserID *string `json:"user_id"`
}

// Validate validates this Models bulk update player record by key response
func (m *ModelsBulkUpdatePlayerRecordByKeyResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSuccess(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBulkUpdatePlayerRecordByKeyResponse) validateSuccess(formats strfmt.Registry) error {

	if err := validate.Required("success", "body", m.Success); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBulkUpdatePlayerRecordByKeyResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBulkUpdatePlayerRecordByKeyResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBulkUpdatePlayerRecordByKeyResponse) UnmarshalBinary(b []byte) error {
	var res ModelsBulkUpdatePlayerRecordByKeyResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
