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

// ModelAuthenticatorKeyResponseV4 Model authenticator key response V4
//
// swagger:model Model authenticator key response V4.
type ModelAuthenticatorKeyResponseV4 struct {

	// secretkey
	// Required: true
	SecretKey *string `json:"secretKey"`

	// uri
	// Required: true
	URI *string `json:"uri"`
}

// Validate validates this Model authenticator key response V4
func (m *ModelAuthenticatorKeyResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSecretKey(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateURI(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelAuthenticatorKeyResponseV4) validateSecretKey(formats strfmt.Registry) error {

	if err := validate.Required("secretKey", "body", m.SecretKey); err != nil {
		return err
	}

	return nil
}

func (m *ModelAuthenticatorKeyResponseV4) validateURI(formats strfmt.Registry) error {

	if err := validate.Required("uri", "body", m.URI); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelAuthenticatorKeyResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelAuthenticatorKeyResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelAuthenticatorKeyResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
