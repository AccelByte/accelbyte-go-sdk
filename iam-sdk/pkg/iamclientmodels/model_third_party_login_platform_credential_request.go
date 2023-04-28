// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelThirdPartyLoginPlatformCredentialRequest Model third party login platform credential request
//
// swagger:model Model third party login platform credential request.
type ModelThirdPartyLoginPlatformCredentialRequest struct {

	// ACSURL is an endpoint on the service provider where the identity provider will redirect to with its authentication response
	// Required: true
	ACSURL *string `json:"ACSURL"`

	// AWSCognitoRegion is aws region where user pool reside
	// Required: true
	AWSCognitoRegion *string `json:"AWSCognitoRegion"`

	// AWSCognitoUserPool is aws cognito user pool id
	// Required: true
	AWSCognitoUserPool *string `json:"AWSCognitoUserPool"`

	// allowed clients that can show this login method
	AllowedClients []string `json:"AllowedClients,omitempty"`

	// appid
	// Required: true
	AppID *string `json:"AppId"`

	// third party authorization endpoint to obtain authorization code
	// Required: true
	AuthorizationEndpoint *string `json:"AuthorizationEndpoint"`

	// clientid
	// Required: true
	ClientID *string `json:"ClientId"`

	// environment
	// Required: true
	Environment *string `json:"Environment"`

	// FederationMetadataURL is an endpoint on the Identity Provider(IdP) to get IdP federation metadata for service provider to build trust relationship
	// Required: true
	FederationMetadataURL *string `json:"FederationMetadataURL"`

	// genericoauthflow
	// Required: true
	GenericOauthFlow *bool `json:"GenericOauthFlow"`

	// isactive
	// Required: true
	IsActive *bool `json:"IsActive"`

	// Issuer of 3rd party identity provider. Used for generic oauth flow.
	// Required: true
	Issuer *string `json:"Issuer"`

	// JWKS endpoint to validate 3rd party user id token. Used for generic oauth flow.
	// Required: true
	JWKSEndpoint *string `json:"JWKSEndpoint"`

	// apple key id
	// Required: true
	KeyID *string `json:"KeyID"`

	// A json containing credentials for netflix integration. Only for netflix platformId
	// Required: true
	NetflixCertificates *AccountcommonNetflixCertificates `json:"NetflixCertificates"`

	// organizationid
	// Required: true
	OrganizationID *string `json:"OrganizationId"`

	// platformname
	// Required: true
	PlatformName *string `json:"PlatformName"`

	// redirecturi
	// Required: true
	RedirectURI *string `json:"RedirectUri"`

	// domains that are allowed to create user and grant roles
	// Required: true
	RegisteredDomains []*AccountcommonRegisteredDomain `json:"RegisteredDomains"`

	// secret
	// Required: true
	Secret *string `json:"Secret"`

	// apple team id
	// Required: true
	TeamID *string `json:"TeamID"`

	// Token authentication type indicating what token will be used to authenticate 3rd party user. Currently support: idToken, code and bearerToken. Used for generic oauth flow.
	// Required: true
	TokenAuthenticationType *string `json:"TokenAuthenticationType"`

	// A JSON containing how IAM service retrieve value from id token claims or userInfo endpoint. Used for generic oauth flow. Currently allowed fields list [userIdentity, name, email, avatarUrl]
	TokenClaimsMapping map[string]string `json:"TokenClaimsMapping,omitempty"`

	// third party token endpoint to obtain token
	// Required: true
	TokenEndpoint *string `json:"TokenEndpoint"`

	// third party user info endpoint to validate 3rd party user profile using third party user token. Used for generic oauth flow.
	// Required: true
	UserInfoEndpoint *string `json:"UserInfoEndpoint"`

	// http method to call third party user info endpoint to validate 3rd party user profile using third party user token. Used for generic oauth flow.
	// Required: true
	UserInfoHTTPMethod *string `json:"UserInfoHTTPMethod"`

	// scopes for generic OAuth Authorization code flow. Default is [openid, profile, email]
	// Required: true
	Scopes []string `json:"scopes"`
}

// Validate validates this Model third party login platform credential request
func (m *ModelThirdPartyLoginPlatformCredentialRequest) Validate(formats strfmt.Registry) error {
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
	if err := m.validateAuthorizationEndpoint(formats); err != nil {
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
	if err := m.validateNetflixCertificates(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOrganizationID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRedirectURI(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegisteredDomains(formats); err != nil {
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
	if err := m.validateTokenEndpoint(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserInfoEndpoint(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserInfoHTTPMethod(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScopes(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateACSURL(formats strfmt.Registry) error {

	if err := validate.Required("ACSURL", "body", m.ACSURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateAWSCognitoRegion(formats strfmt.Registry) error {

	if err := validate.Required("AWSCognitoRegion", "body", m.AWSCognitoRegion); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateAWSCognitoUserPool(formats strfmt.Registry) error {

	if err := validate.Required("AWSCognitoUserPool", "body", m.AWSCognitoUserPool); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("AppId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateAuthorizationEndpoint(formats strfmt.Registry) error {

	if err := validate.Required("AuthorizationEndpoint", "body", m.AuthorizationEndpoint); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("ClientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateEnvironment(formats strfmt.Registry) error {

	if err := validate.Required("Environment", "body", m.Environment); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateFederationMetadataURL(formats strfmt.Registry) error {

	if err := validate.Required("FederationMetadataURL", "body", m.FederationMetadataURL); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateGenericOauthFlow(formats strfmt.Registry) error {

	if err := validate.Required("GenericOauthFlow", "body", m.GenericOauthFlow); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateIsActive(formats strfmt.Registry) error {

	if err := validate.Required("IsActive", "body", m.IsActive); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateIssuer(formats strfmt.Registry) error {

	if err := validate.Required("Issuer", "body", m.Issuer); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateJWKSEndpoint(formats strfmt.Registry) error {

	if err := validate.Required("JWKSEndpoint", "body", m.JWKSEndpoint); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateKeyID(formats strfmt.Registry) error {

	if err := validate.Required("KeyID", "body", m.KeyID); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateNetflixCertificates(formats strfmt.Registry) error {

	if err := validate.Required("NetflixCertificates", "body", m.NetflixCertificates); err != nil {
		return err
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

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateOrganizationID(formats strfmt.Registry) error {

	if err := validate.Required("OrganizationId", "body", m.OrganizationID); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validatePlatformName(formats strfmt.Registry) error {

	if err := validate.Required("PlatformName", "body", m.PlatformName); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("RedirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateRegisteredDomains(formats strfmt.Registry) error {

	if err := validate.Required("RegisteredDomains", "body", m.RegisteredDomains); err != nil {
		return err
	}

	for i := 0; i < len(m.RegisteredDomains); i++ {
		if swag.IsZero(m.RegisteredDomains[i]) { // not required
			continue
		}

		if m.RegisteredDomains[i] != nil {
			if err := m.RegisteredDomains[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("RegisteredDomains" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateSecret(formats strfmt.Registry) error {

	if err := validate.Required("Secret", "body", m.Secret); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateTeamID(formats strfmt.Registry) error {

	if err := validate.Required("TeamID", "body", m.TeamID); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateTokenAuthenticationType(formats strfmt.Registry) error {

	if err := validate.Required("TokenAuthenticationType", "body", m.TokenAuthenticationType); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateTokenEndpoint(formats strfmt.Registry) error {

	if err := validate.Required("TokenEndpoint", "body", m.TokenEndpoint); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateUserInfoEndpoint(formats strfmt.Registry) error {

	if err := validate.Required("UserInfoEndpoint", "body", m.UserInfoEndpoint); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateUserInfoHTTPMethod(formats strfmt.Registry) error {

	if err := validate.Required("UserInfoHTTPMethod", "body", m.UserInfoHTTPMethod); err != nil {
		return err
	}

	return nil
}

func (m *ModelThirdPartyLoginPlatformCredentialRequest) validateScopes(formats strfmt.Registry) error {

	if err := validate.Required("scopes", "body", m.Scopes); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelThirdPartyLoginPlatformCredentialRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelThirdPartyLoginPlatformCredentialRequest) UnmarshalBinary(b []byte) error {
	var res ModelThirdPartyLoginPlatformCredentialRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
