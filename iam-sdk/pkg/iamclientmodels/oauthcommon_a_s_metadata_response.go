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

// OauthcommonASMetadataResponse Oauthcommon AS metadata response
//
// swagger:model Oauthcommon AS metadata response.
type OauthcommonASMetadataResponse struct {

	// authorization_endpoint
	// Required: true
	AuthorizationEndpoint *string `json:"authorization_endpoint"`

	// code_challenge_methods_supported
	// Required: true
	CodeChallengeMethodsSupported []string `json:"code_challenge_methods_supported"`

	// grant_types_supported
	// Required: true
	GrantTypesSupported []string `json:"grant_types_supported"`

	// issuer
	// Required: true
	Issuer *string `json:"issuer"`

	// jwks_uri
	// Required: true
	JWKSURI *string `json:"jwks_uri"`

	// registration_endpoint
	// Required: true
	RegistrationEndpoint *string `json:"registration_endpoint"`

	// response_types_supported
	// Required: true
	ResponseTypesSupported []string `json:"response_types_supported"`

	// scopes_supported
	// Required: true
	ScopesSupported []string `json:"scopes_supported"`

	// token_endpoint
	// Required: true
	TokenEndpoint *string `json:"token_endpoint"`

	// token_endpoint_auth_methods_supported
	// Required: true
	TokenEndpointAuthMethodsSupported []string `json:"token_endpoint_auth_methods_supported"`
}

// Validate validates this Oauthcommon AS metadata response
func (m *OauthcommonASMetadataResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAuthorizationEndpoint(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCodeChallengeMethodsSupported(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGrantTypesSupported(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIssuer(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJWKSURI(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegistrationEndpoint(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResponseTypesSupported(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScopesSupported(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTokenEndpoint(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTokenEndpointAuthMethodsSupported(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthcommonASMetadataResponse) validateAuthorizationEndpoint(formats strfmt.Registry) error {

	if err := validate.Required("authorization_endpoint", "body", m.AuthorizationEndpoint); err != nil {
		return err
	}

	return nil
}

func (m *OauthcommonASMetadataResponse) validateCodeChallengeMethodsSupported(formats strfmt.Registry) error {

	if err := validate.Required("code_challenge_methods_supported", "body", m.CodeChallengeMethodsSupported); err != nil {
		return err
	}

	return nil
}

func (m *OauthcommonASMetadataResponse) validateGrantTypesSupported(formats strfmt.Registry) error {

	if err := validate.Required("grant_types_supported", "body", m.GrantTypesSupported); err != nil {
		return err
	}

	return nil
}

func (m *OauthcommonASMetadataResponse) validateIssuer(formats strfmt.Registry) error {

	if err := validate.Required("issuer", "body", m.Issuer); err != nil {
		return err
	}

	return nil
}

func (m *OauthcommonASMetadataResponse) validateJWKSURI(formats strfmt.Registry) error {

	if err := validate.Required("jwks_uri", "body", m.JWKSURI); err != nil {
		return err
	}

	return nil
}

func (m *OauthcommonASMetadataResponse) validateRegistrationEndpoint(formats strfmt.Registry) error {

	if err := validate.Required("registration_endpoint", "body", m.RegistrationEndpoint); err != nil {
		return err
	}

	return nil
}

func (m *OauthcommonASMetadataResponse) validateResponseTypesSupported(formats strfmt.Registry) error {

	if err := validate.Required("response_types_supported", "body", m.ResponseTypesSupported); err != nil {
		return err
	}

	return nil
}

func (m *OauthcommonASMetadataResponse) validateScopesSupported(formats strfmt.Registry) error {

	if err := validate.Required("scopes_supported", "body", m.ScopesSupported); err != nil {
		return err
	}

	return nil
}

func (m *OauthcommonASMetadataResponse) validateTokenEndpoint(formats strfmt.Registry) error {

	if err := validate.Required("token_endpoint", "body", m.TokenEndpoint); err != nil {
		return err
	}

	return nil
}

func (m *OauthcommonASMetadataResponse) validateTokenEndpointAuthMethodsSupported(formats strfmt.Registry) error {

	if err := validate.Required("token_endpoint_auth_methods_supported", "body", m.TokenEndpointAuthMethodsSupported); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthcommonASMetadataResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthcommonASMetadataResponse) UnmarshalBinary(b []byte) error {
	var res OauthcommonASMetadataResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
