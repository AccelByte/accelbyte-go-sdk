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

// ModelSSOPlatformCredentialRequest Model SSO platform credential request
//
// swagger:model Model SSO platform credential request.
type ModelSSOPlatformCredentialRequest struct {

	// For Azure with SAML: the SAML Assertion Consumer Service (ACS) URL on the service provider where the IdP sends its authentication response.
	// Required: true
	AcsURL *string `json:"acsUrl"`

	// apikey
	// Required: true
	APIKey *string `json:"apiKey"`

	// Application identifier in the IdP. For Azure with SAML, this is the EntityID.
	// Required: true
	AppID *string `json:"appId"`

	// For Azure with SAML: the IdP federation metadata endpoint used by the service provider to build a trust relationship.
	// Required: true
	FederationMetadataURL *string `json:"federationMetadataUrl"`

	// isactive
	IsActive bool `json:"isActive"`

	// redirecturi
	// Required: true
	RedirectURI *string `json:"redirectUri"`

	// secret
	// Required: true
	Secret *string `json:"secret"`

	// For Discourse: the forum base URL.
	// Required: true
	SSOURL *string `json:"ssoUrl"`
}

// Validate validates this Model SSO platform credential request
func (m *ModelSSOPlatformCredentialRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAcsURL(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAPIKey(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFederationMetadataURL(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRedirectURI(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSecret(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSSOURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelSSOPlatformCredentialRequest) validateAcsURL(formats strfmt.Registry) error {

	if err := validate.Required("acsUrl", "body", m.AcsURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialRequest) validateAPIKey(formats strfmt.Registry) error {

	if err := validate.Required("apiKey", "body", m.APIKey); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialRequest) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialRequest) validateFederationMetadataURL(formats strfmt.Registry) error {

	if err := validate.Required("federationMetadataUrl", "body", m.FederationMetadataURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialRequest) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("redirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialRequest) validateSecret(formats strfmt.Registry) error {

	if err := validate.Required("secret", "body", m.Secret); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialRequest) validateSSOURL(formats strfmt.Registry) error {

	if err := validate.Required("ssoUrl", "body", m.SSOURL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelSSOPlatformCredentialRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelSSOPlatformCredentialRequest) UnmarshalBinary(b []byte) error {
	var res ModelSSOPlatformCredentialRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
