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

// ClientmodelClientUpdateV3Request Clientmodel client update V3 request
//
// swagger:model Clientmodel client update V3 request.
type ClientmodelClientUpdateV3Request struct {

	// audiences
	Audiences []string `json:"audiences,omitempty"`

	// baseuri
	BaseURI string `json:"baseUri,omitempty"`

	// clientname
	ClientName string `json:"clientName,omitempty"`

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

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// min value 1 second, max value 86400 seconds
	// Format: int32
	OauthAccessTokenExpiration int32 `json:"oauthAccessTokenExpiration,omitempty"`

	// valid time unit: SECONDS, MINUTES, or HOURS. Default is SECONDS
	OauthAccessTokenExpirationTimeUnit string `json:"oauthAccessTokenExpirationTimeUnit,omitempty"`

	// min value 1 seconds, max value 2592000 seconds
	// Format: int32
	OauthRefreshTokenExpiration int32 `json:"oauthRefreshTokenExpiration,omitempty"`

	// valid time unit: SECONDS, MINUTES, HOURS or DAYS. Default is MINUTES
	OauthRefreshTokenExpirationTimeUnit string `json:"oauthRefreshTokenExpirationTimeUnit,omitempty"`

	// redirecturi
	RedirectURI string `json:"redirectUri,omitempty"`

	// scopes
	Scopes []string `json:"scopes,omitempty"`

	// twofactorenabled
	TwoFactorEnabled bool `json:"twoFactorEnabled"`
}

// Validate validates this Clientmodel client update V3 request
func (m *ClientmodelClientUpdateV3Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientPlatform(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelClientUpdateV3Request) validateClientPlatform(formats strfmt.Registry) error {

	if err := validate.Required("clientPlatform", "body", m.ClientPlatform); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientUpdateV3Request) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelClientUpdateV3Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelClientUpdateV3Request) UnmarshalBinary(b []byte) error {
	var res ClientmodelClientUpdateV3Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
