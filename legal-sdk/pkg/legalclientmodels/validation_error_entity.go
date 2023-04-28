// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ValidationErrorEntity Validation error entity
//
// swagger:model Validation error entity.
type ValidationErrorEntity struct {

	// numeric error code
	// Required: true
	// Format: int32
	ErrorCode *int32 `json:"errorCode"`

	// error message
	// Required: true
	ErrorMessage *string `json:"errorMessage"`

	// errors
	Errors []*FieldValidationError `json:"errors,omitempty"`
}

// Validate validates this Validation error entity
func (m *ValidationErrorEntity) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateErrorCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateErrorMessage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ValidationErrorEntity) validateErrorCode(formats strfmt.Registry) error {

	if err := validate.Required("errorCode", "body", m.ErrorCode); err != nil {
		return err
	}

	return nil
}

func (m *ValidationErrorEntity) validateErrorMessage(formats strfmt.Registry) error {

	if err := validate.Required("errorMessage", "body", m.ErrorMessage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ValidationErrorEntity) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ValidationErrorEntity) UnmarshalBinary(b []byte) error {
	var res ValidationErrorEntity
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
