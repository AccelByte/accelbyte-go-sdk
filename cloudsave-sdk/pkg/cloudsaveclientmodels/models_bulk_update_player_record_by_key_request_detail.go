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

// ModelsBulkUpdatePlayerRecordByKeyRequestDetail Models bulk update player record by key request detail
//
// swagger:model Models bulk update player record by key request detail.
type ModelsBulkUpdatePlayerRecordByKeyRequestDetail struct {

	// User ID who owns the record, should follow UUID version 4 without hyphen format
	// Required: true
	UserID *string `json:"user_id"`

	// Player record data, should be in valid json format
	// Required: true
	Value interface{} `json:"value"`
}

// Validate validates this Models bulk update player record by key request detail
func (m *ModelsBulkUpdatePlayerRecordByKeyRequestDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBulkUpdatePlayerRecordByKeyRequestDetail) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBulkUpdatePlayerRecordByKeyRequestDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBulkUpdatePlayerRecordByKeyRequestDetail) UnmarshalBinary(b []byte) error {
	var res ModelsBulkUpdatePlayerRecordByKeyRequestDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
