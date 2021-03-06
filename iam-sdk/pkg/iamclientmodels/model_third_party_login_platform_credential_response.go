// Code generated by go-swagger; DO NOT EDIT.

package iamclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelThirdPartyLoginPlatformCredentialResponse model third party login platform credential response
//
// swagger:model model.ThirdPartyLoginPlatformCredentialResponse
type ModelThirdPartyLoginPlatformCredentialResponse struct {

	// ACSURL is an endpoint on the service provider where the identity provider will redirect to with its authentication response
	// Required: true
	ACSURL *string `json:"ACSURL"`

	// AWSCognitoRegion is aws region where user pool reside
	// Required: true
	AWSCognitoRegion *string `json:"AWSCognitoRegion"`

	// AWSCognitoUserPool is aws cognito user pool id
	// Required: true
	AWSCognitoUserPool *string `json:"AWSCognitoUserPool"`

	// app Id
	// Required: true
	AppID *string `json:"AppId"`

	// client Id
	// Required: true
	ClientID *string `json:"ClientId"`

	// environment
	// Required: true
	Environment *string `json:"Environment"`

	// FederationMetadataURL is an endpoint on the Identity Provider(IdP) to get IdP federation metadata for service provider to build trust relationship
	// Required: true
	FederationMetadataURL *string `json:"FederationMetadataURL"`

	// GenericOauthFlow is a flag that indicate this client is using generic oauth/open id flow or not
	// Required: true
	GenericOauthFlow bool `json:"GenericOauthFlow"`

	// is active
	// Required: true
	IsActive *bool `json:"IsActive"`

	// Issuer of 3rd party identity provider. Used for generic oauth flow.
	// Required: true
	Issuer *string `json:"Issuer"`

	// JWKS endpoint to validate 3rd party user id token. Used for generic oauth flow.
	// Required: true
	JWKSEndpoint *string `json:"JWKSEndpoint"`

	// key ID
	// Required: true
	KeyID *string `json:"KeyID"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// A json containing Credentials for netflix integration.
	NetflixCertificates *AccountcommonNetflixCertificates `json:"NetflixCertificates,omitempty"`

	// organization Id
	// Required: true
	OrganizationID *string `json:"OrganizationId"`

	// platform Id
	// Required: true
	PlatformID *string `json:"PlatformId"`

	// platform name
	// Required: true
	PlatformName *string `json:"PlatformName"`

	// redirect Uri
	// Required: true
	RedirectURI *string `json:"RedirectUri"`

	// secret
	// Required: true
	Secret *string `json:"Secret"`

	// team ID
	// Required: true
	TeamID *string `json:"TeamID"`

	// Token authentication type indicating what token will be used to authenticate 3rd party user. Currently support: idToken. Used for generic oauth flow.
	// Required: true
	TokenAuthenticationType *string `json:"TokenAuthenticationType"`

	// A JSON containing how IAM service retrieve value from id token claims. Used for generic oauth flow.
	// Required: true
	TokenClaimsMapping map[string]string `json:"TokenClaimsMapping"`

	// registered domains
	// Required: true
	RegisteredDomains []*AccountcommonRegisteredDomain `json:"registeredDomains"`
}

// Validate validates this model third party login platform credential response
func (m *ModelThirdPartyLoginPlatformCredentialResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateACSURL(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateAWSCognitoRegion(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateAWSCognitoUserPool(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateEnvironment(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateFederationMetadataURL(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateGenericOauthFlow(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIsActive(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIssuer(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateJWKSEndpoint(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateKeyID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNetflixCertificates(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateOrganizationID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePlatformName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRedirectURI(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateSecret(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTeamID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTokenAuthenticationType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTokenClaimsMapping(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRegisteredDomains(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateACSURL(formats strfmt.Registry) error {

	if err := validate.Required("ACSURL", "body", m.ACSURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateAWSCognitoRegion(formats strfmt.Registry) error {

	if err := validate.Required("AWSCognitoRegion", "body", m.AWSCognitoRegion); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateAWSCognitoUserPool(formats strfmt.Registry) error {

	if err := validate.Required("AWSCognitoUserPool", "body", m.AWSCognitoUserPool); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("AppId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("ClientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateEnvironment(formats strfmt.Registry) error {

	if err := validate.Required("Environment", "body", m.Environment); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateFederationMetadataURL(formats strfmt.Registry) error {

	if err := validate.Required("FederationMetadataURL", "body", m.FederationMetadataURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateGenericOauthFlow(formats strfmt.Registry) error {

	if err := validate.Required("GenericOauthFlow", "body", bool(m.GenericOauthFlow)); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateIsActive(formats strfmt.Registry) error {

	if err := validate.Required("IsActive", "body", m.IsActive); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateIssuer(formats strfmt.Registry) error {

	if err := validate.Required("Issuer", "body", m.Issuer); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateJWKSEndpoint(formats strfmt.Registry) error {

	if err := validate.Required("JWKSEndpoint", "body", m.JWKSEndpoint); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateKeyID(formats strfmt.Registry) error {

	if err := validate.Required("KeyID", "body", m.KeyID); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateNetflixCertificates(formats strfmt.Registry) error {

	if swag.IsZero(m.NetflixCertificates) { // not required
		return nil
	}

	if m.NetflixCertificates != nil {
		if err := m.NetflixCertificates.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("NetflixCertificates")
			}
			return err
		}
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateOrganizationID(formats strfmt.Registry) error {

	if err := validate.Required("OrganizationId", "body", m.OrganizationID); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("PlatformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validatePlatformName(formats strfmt.Registry) error {

	if err := validate.Required("PlatformName", "body", m.PlatformName); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("RedirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateSecret(formats strfmt.Registry) error {

	if err := validate.Required("Secret", "body", m.Secret); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateTeamID(formats strfmt.Registry) error {

	if err := validate.Required("TeamID", "body", m.TeamID); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateTokenAuthenticationType(formats strfmt.Registry) error {

	if err := validate.Required("TokenAuthenticationType", "body", m.TokenAuthenticationType); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateTokenClaimsMapping(formats strfmt.Registry) error {

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialResponse) validateRegisteredDomains(formats strfmt.Registry) error {

	if err := validate.Required("registeredDomains", "body", m.RegisteredDomains); err != nil {
		return err
	}

	for i := 0; i < len(m.RegisteredDomains); i++ {
		if swag.IsZero(m.RegisteredDomains[i]) { // not required
			continue
		}

		if m.RegisteredDomains[i] != nil {
			if err := m.RegisteredDomains[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("registeredDomains" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelThirdPartyLoginPlatformCredentialResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelThirdPartyLoginPlatformCredentialResponse) UnmarshalBinary(b []byte) error {
	var res ModelThirdPartyLoginPlatformCredentialResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
