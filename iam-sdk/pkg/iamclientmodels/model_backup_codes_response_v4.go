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

// ModelBackupCodesResponseV4 Model backup codes response V4
//
// swagger:model Model backup codes response V4.
type ModelBackupCodesResponseV4 struct {

	// generatedat
	// Required: true
	// Format: int64
	GeneratedAt *int64 `json:"generatedAt"`

	// invalidcodes
	InvalidCodes []string `json:"invalidCodes,omitempty"`

	// validcodes
	ValidCodes []string `json:"validCodes,omitempty"`
}

// Validate validates this Model backup codes response V4
func (m *ModelBackupCodesResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGeneratedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelBackupCodesResponseV4) validateGeneratedAt(formats strfmt.Registry) error {

	if err := validate.Required("generatedAt", "body", m.GeneratedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelBackupCodesResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelBackupCodesResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelBackupCodesResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
