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

// BulkUserStatItemInc Bulk user stat item inc
//
// swagger:model Bulk user stat item inc.
type BulkUserStatItemInc struct {

	// inc
	// Format: double
	Inc float64 `json:"inc,omitempty"`

	// statcode
	// Required: true
	StatCode *string `json:"statCode"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Bulk user stat item inc
func (m *BulkUserStatItemInc) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatCode(formats); err != nil {
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

func (m *BulkUserStatItemInc) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

func (m *BulkUserStatItemInc) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *BulkUserStatItemInc) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkUserStatItemInc) UnmarshalBinary(b []byte) error {
	var res BulkUserStatItemInc
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
