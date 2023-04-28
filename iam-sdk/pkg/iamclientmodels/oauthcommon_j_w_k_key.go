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

// OauthcommonJWKKey Oauthcommon JWK key
//
// swagger:model Oauthcommon JWK key.
type OauthcommonJWKKey struct {

	// alg
	Alg string `json:"alg,omitempty"`

	// e
	E string `json:"e,omitempty"`

	// kid
	Kid string `json:"kid,omitempty"`

	// kty
	// Required: true
	Kty *string `json:"kty"`

	// n
	N string `json:"n,omitempty"`

	// use
	Use string `json:"use,omitempty"`
}

// Validate validates this Oauthcommon JWK key
func (m *OauthcommonJWKKey) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateKty(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthcommonJWKKey) validateKty(formats strfmt.Registry) error {

	if err := validate.Required("kty", "body", m.Kty); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthcommonJWKKey) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthcommonJWKKey) UnmarshalBinary(b []byte) error {
	var res OauthcommonJWKKey
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
