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

// ModelUserMFATokenResponseV4 Model user MFA token response V4
//
// swagger:model Model user MFA token response V4.
type ModelUserMFATokenResponseV4 struct {

	// mfatoken
	// Required: true
	MFAToken *string `json:"mfaToken"`
}

// Validate validates this Model user MFA token response V4
func (m *ModelUserMFATokenResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMFAToken(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserMFATokenResponseV4) validateMFAToken(formats strfmt.Registry) error {

	if err := validate.Required("mfaToken", "body", m.MFAToken); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserMFATokenResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserMFATokenResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelUserMFATokenResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
