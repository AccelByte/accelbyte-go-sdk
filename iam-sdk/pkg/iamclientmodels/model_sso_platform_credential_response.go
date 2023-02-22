// Code generated by go-swagger; DO NOT EDIT.

package iamclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelSSOPlatformCredentialResponse model SSO platform credential response
//
// swagger:model model.SSOPlatformCredentialResponse
type ModelSSOPlatformCredentialResponse struct {

	// acs Url
	// Required: true
	AcsURL *string `json:"acsUrl"`

	// app Id
	// Required: true
	AppID *string `json:"appId"`

	// federation metadata Url
	// Required: true
	FederationMetadataURL *string `json:"federationMetadataUrl"`

	// is active
	// Required: true
	IsActive *bool `json:"isActive"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// platform Id
	// Required: true
	PlatformID *string `json:"platformId"`

	// redirect Uri
	// Required: true
	RedirectURI *string `json:"redirectUri"`

	// secret
	// Required: true
	Secret *string `json:"secret"`

	// sso Url
	// Required: true
	SSOURL *string `json:"ssoUrl"`

	// first few characters of key
	// Required: true
	TruncatedAPIKey *string `json:"truncatedApiKey"`
}

// Validate validates this model SSO platform credential response
func (m *ModelSSOPlatformCredentialResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAcsURL(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateFederationMetadataURL(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIsActive(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePlatformID(formats); err != nil {
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

	if err := m.validateTruncatedAPIKey(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelSSOPlatformCredentialResponse) validateAcsURL(formats strfmt.Registry) error {

	if err := validate.Required("acsUrl", "body", m.AcsURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialResponse) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialResponse) validateFederationMetadataURL(formats strfmt.Registry) error {

	if err := validate.Required("federationMetadataUrl", "body", m.FederationMetadataURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialResponse) validateIsActive(formats strfmt.Registry) error {

	if err := validate.Required("isActive", "body", m.IsActive); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialResponse) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialResponse) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("redirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialResponse) validateSecret(formats strfmt.Registry) error {

	if err := validate.Required("secret", "body", m.Secret); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialResponse) validateSSOURL(formats strfmt.Registry) error {

	if err := validate.Required("ssoUrl", "body", m.SSOURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelSSOPlatformCredentialResponse) validateTruncatedAPIKey(formats strfmt.Registry) error {

	if err := validate.Required("truncatedApiKey", "body", m.TruncatedAPIKey); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelSSOPlatformCredentialResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelSSOPlatformCredentialResponse) UnmarshalBinary(b []byte) error {
	var res ModelSSOPlatformCredentialResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}