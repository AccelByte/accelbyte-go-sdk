// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelInputValidationUpdatePayload Model input validation update payload
//
// swagger:model Model input validation update payload.
type ModelInputValidationUpdatePayload struct {

	// field
	// Required: true
	Field *string `json:"field"`

	// validation
	// Required: true
	Validation *Validation `json:"validation"`
}

// Validate validates this Model input validation update payload
func (m *ModelInputValidationUpdatePayload) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateField(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateValidation(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelInputValidationUpdatePayload) validateField(formats strfmt.Registry) error {

	if err := validate.Required("field", "body", m.Field); err != nil {
		return err
	}

	return nil
}

func (m *ModelInputValidationUpdatePayload) validateValidation(formats strfmt.Registry) error {

	if err := validate.Required("validation", "body", m.Validation); err != nil {
		return err
	}

	if m.Validation != nil {
		if err := m.Validation.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("validation")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelInputValidationUpdatePayload) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelInputValidationUpdatePayload) UnmarshalBinary(b []byte) error {
	var res ModelInputValidationUpdatePayload
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
