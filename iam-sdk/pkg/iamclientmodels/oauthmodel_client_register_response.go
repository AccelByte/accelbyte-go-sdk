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

// OauthmodelClientRegisterResponse Oauthmodel client register response
//
// swagger:model Oauthmodel client register response.
type OauthmodelClientRegisterResponse struct {

	// client_id
	// Required: true
	ClientID *string `json:"client_id"`

	// client_id_issued_at
	// Required: true
	// Format: int64
	ClientIDIssuedAt *int64 `json:"client_id_issued_at"`

	// client_name
	// Required: true
	ClientName *string `json:"client_name"`

	// client_uri
	ClientURI string `json:"client_uri,omitempty"`

	// grant_types
	GrantTypes []string `json:"grant_types,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// redirect_uris
	// Required: true
	RedirectUris []string `json:"redirect_uris"`

	// response_types
	ResponseTypes []string `json:"response_types,omitempty"`

	// scopes
	Scopes []string `json:"scopes,omitempty"`

	// token_endpoint_auth_method
	TokenEndpointAuthMethod string `json:"token_endpoint_auth_method,omitempty"`
}

// Validate validates this Oauthmodel client register response
func (m *OauthmodelClientRegisterResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientIDIssuedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *OauthmodelClientRegisterResponse) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("client_id", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelClientRegisterResponse) validateClientIDIssuedAt(formats strfmt.Registry) error {

	if err := validate.Required("client_id_issued_at", "body", m.ClientIDIssuedAt); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelClientRegisterResponse) validateClientName(formats strfmt.Registry) error {

	if err := validate.Required("client_name", "body", m.ClientName); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelClientRegisterResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelClientRegisterResponse) validateRedirectUris(formats strfmt.Registry) error {

	if err := validate.Required("redirect_uris", "body", m.RedirectUris); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelClientRegisterResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelClientRegisterResponse) UnmarshalBinary(b []byte) error {
	var res OauthmodelClientRegisterResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
