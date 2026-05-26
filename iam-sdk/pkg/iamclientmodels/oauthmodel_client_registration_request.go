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

// OauthmodelClientRegistrationRequest Oauthmodel client registration request
//
// swagger:model Oauthmodel client registration request.
type OauthmodelClientRegistrationRequest struct {

	// client_name
	// Required: true
	ClientName *string `json:"client_name"`

	// client_uri
	ClientURI string `json:"client_uri,omitempty"`

	// valid: authorization_code, refresh_token, default is:['authorization_code', 'refresh_token']
	GrantTypes []string `json:"grant_types,omitempty"`

	// redirect_uris
	// Required: true
	RedirectUris []string `json:"redirect_uris"`

	// valid: code, default is 'code'
	ResponseTypes []string `json:"response_types,omitempty"`

	// valid value: [openid|email|account|commerce|social|publishing|analytics]
	Scopes []string `json:"scopes,omitempty"`

	// Currently, it only supports 'none', which is the default value. Any other valid values will always be substituted with 'none'.
	TokenEndpointAuthMethod string `json:"token_endpoint_auth_method,omitempty"`
}

// Validate validates this Oauthmodel client registration request
func (m *OauthmodelClientRegistrationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRedirectUris(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelClientRegistrationRequest) validateClientName(formats strfmt.Registry) error {

	if err := validate.Required("client_name", "body", m.ClientName); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelClientRegistrationRequest) validateRedirectUris(formats strfmt.Registry) error {

	if err := validate.Required("redirect_uris", "body", m.RedirectUris); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelClientRegistrationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelClientRegistrationRequest) UnmarshalBinary(b []byte) error {
	var res OauthmodelClientRegistrationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
