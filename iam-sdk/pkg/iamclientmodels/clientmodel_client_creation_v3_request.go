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

	// audiences
	// Required: true
	Audiences []string `json:"audiences"`

	// baseuri
	// Required: true
	BaseURI *string `json:"baseUri"`

	// clientid
	// Required: true
	ClientID *string `json:"clientId"`

	// clientname
	// Required: true
	ClientName *string `json:"clientName"`

	// clientpermissions
	ClientPermissions []*AccountcommonPermissionV3 `json:"clientPermissions,omitempty"`

	// clientplatform
	// Required: true
	ClientPlatform *string `json:"clientPlatform"`

	// deletable
	Deletable bool `json:"deletable"`

	// length 0~1024
	// Required: true
	Description *string `json:"description"`

	// modulepermissions
	ModulePermissions []*AccountcommonClientModulePermission `json:"modulePermissions,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// min value 1 second, max value 86400 seconds
	// Format: int32
	OauthAccessTokenExpiration int32 `json:"oauthAccessTokenExpiration,omitempty"`

	// valid time unit: SECONDS, MINUTES, or HOURS
	OauthAccessTokenExpirationTimeUnit string `json:"oauthAccessTokenExpirationTimeUnit,omitempty"`

	// oauthclienttype
	// Required: true
	OauthClientType *string `json:"oauthClientType"`

	// min value 1 seconds, max value 2592000 seconds
	// Format: int32
	OauthRefreshTokenExpiration int32 `json:"oauthRefreshTokenExpiration,omitempty"`

	// valid time unit: SECONDS, MINUTES, HOURS or DAYS
	OauthRefreshTokenExpirationTimeUnit string `json:"oauthRefreshTokenExpirationTimeUnit,omitempty"`

	// parentnamespace
	ParentNamespace string `json:"parentNamespace,omitempty"`

	// redirecturi
	// Required: true
	RedirectURI *string `json:"redirectUri"`

	// scopes
	Scopes []string `json:"scopes,omitempty"`

	// secret
	// Required: true
	Secret *string `json:"secret"`

	// exempt this client from login queue
	// Required: true
	SkipLoginQueue *bool `json:"skipLoginQueue"`

	// twofactorenabled
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
