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

// OauthmodelTokenIntrospectResponse Oauthmodel token introspect response
//
// swagger:model Oauthmodel token introspect response.
type OauthmodelTokenIntrospectResponse struct {

	// active
	// Required: true
	Active *bool `json:"active"`

	// aud
	Aud string `json:"aud,omitempty"`

	// client_id
	ClientID string `json:"client_id,omitempty"`

	// exp
	// Format: int64
	Exp int64 `json:"exp,omitempty"`

	// iat
	// Format: int64
	Iat int64 `json:"iat,omitempty"`

	// scope
	Scope string `json:"scope,omitempty"`

	// sub
	Sub string `json:"sub,omitempty"`
}

// Validate validates this Oauthmodel token introspect response
func (m *OauthmodelTokenIntrospectResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelTokenIntrospectResponse) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelTokenIntrospectResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelTokenIntrospectResponse) UnmarshalBinary(b []byte) error {
	var res OauthmodelTokenIntrospectResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
