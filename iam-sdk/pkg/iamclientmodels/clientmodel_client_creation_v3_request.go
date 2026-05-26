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

// ClientmodelClientCreationV3Request Clientmodel client creation V3 request
//
// swagger:model Clientmodel client creation V3 request.
type ClientmodelClientCreationV3Request struct {

	// List of target client IDs who are intended to receive the token.
	// Required: true
	Audiences []string `json:"audiences"`

	// A base URI of the application. Used in audience checking. Required if the application type is a server.
	// Required: true
	BaseURI *string `json:"baseUri"`

	// The client ID. Must be UUID v4 without hyphens.
	// Required: true
	ClientID *string `json:"clientId"`

	// The client name.
	// Required: true
	ClientName *string `json:"clientName"`

	// Contains the client's permissions.
	ClientPermissions []*AccountcommonPermissionV3 `json:"clientPermissions,omitempty"`

	// Available client platforms: Playstation, Xbox, Steam, Epic, IOS, GooglePlay, Nintendo, Oculus. Default: empty string.
	// Required: true
	ClientPlatform *string `json:"clientPlatform"`

	// Flag to identify whether the client is deletable. Defaults to true on creation.
	Deletable bool `json:"deletable"`

	// length 0~1024
	// Required: true
	Description *string `json:"description"`

	// Module-based permissions for this client: 1. Only applicable for Confidential client type 2. Currently used in Multi Tenant mode only 3. To view the available module permission list, refer to _GET /iam/v3/admin/clientConfig/permissions_
	ModulePermissions []*AccountcommonClientModulePermission `json:"modulePermissions,omitempty"`

	// The namespace where the client lives.
	// Required: true
	Namespace *string `json:"namespace"`

	// min value 1 second, max value 86400 seconds. Default: 0 (uses value from environment variable).
	// Format: int32
	OauthAccessTokenExpiration int32 `json:"oauthAccessTokenExpiration,omitempty"`

	// valid time unit: SECONDS, MINUTES, or HOURS. Default: SECONDS.
	OauthAccessTokenExpirationTimeUnit string `json:"oauthAccessTokenExpirationTimeUnit,omitempty"`

	// OAuth client type. Allowed values: - Public: uses PKCE flow, must not have a client secret - Confidential: has a client secret, does not use PKCE flow
	// Required: true
	OauthClientType *string `json:"oauthClientType"`

	// min value 1 seconds, max value 2592000 seconds. Default: 0 (uses value from environment variable).
	// Format: int32
	OauthRefreshTokenExpiration int32 `json:"oauthRefreshTokenExpiration,omitempty"`

	// valid time unit: SECONDS, MINUTES, HOURS or DAYS. Default: SECONDS.
	OauthRefreshTokenExpirationTimeUnit string `json:"oauthRefreshTokenExpirationTimeUnit,omitempty"`

	// Contains the redirect URI used in OAuth callback.
	// Required: true
	RedirectURI *string `json:"redirectUri"`

	// scopes
	Scopes []string `json:"scopes,omitempty"`

	// Client secret. Required for Confidential clients; must not be provided for Public clients.
	// Required: true
	Secret *string `json:"secret"`

	// exempt this client from login queue
	// Required: true
	SkipLoginQueue *bool `json:"skipLoginQueue"`

	// Flag to indicate whether 2FA validation is enabled for this client. Default: false.
	TwoFactorEnabled bool `json:"twoFactorEnabled"`
}

// Validate validates this Clientmodel client creation V3 request
func (m *ClientmodelClientCreationV3Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAudiences(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBaseURI(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientPlatform(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOauthClientType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRedirectURI(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSecret(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSkipLoginQueue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelClientCreationV3Request) validateAudiences(formats strfmt.Registry) error {

	if err := validate.Required("audiences", "body", m.Audiences); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateBaseURI(formats strfmt.Registry) error {

	if err := validate.Required("baseUri", "body", m.BaseURI); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("clientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateClientName(formats strfmt.Registry) error {

	if err := validate.Required("clientName", "body", m.ClientName); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateClientPlatform(formats strfmt.Registry) error {

	if err := validate.Required("clientPlatform", "body", m.ClientPlatform); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateOauthClientType(formats strfmt.Registry) error {

	if err := validate.Required("oauthClientType", "body", m.OauthClientType); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("redirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateSecret(formats strfmt.Registry) error {

	if err := validate.Required("secret", "body", m.Secret); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateSkipLoginQueue(formats strfmt.Registry) error {

	if err := validate.Required("skipLoginQueue", "body", m.SkipLoginQueue); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelClientCreationV3Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelClientCreationV3Request) UnmarshalBinary(b []byte) error {
	var res ClientmodelClientCreationV3Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
