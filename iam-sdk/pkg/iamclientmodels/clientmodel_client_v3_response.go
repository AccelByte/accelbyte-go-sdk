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

// ClientmodelClientV3Response Clientmodel client V3 response
//
// swagger:model Clientmodel client V3 response.
type ClientmodelClientV3Response struct {

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
	// Required: true
	ClientPermissions []*AccountcommonPermissionV3 `json:"clientPermissions"`

	// clientplatform
	// Required: true
	ClientPlatform *string `json:"clientPlatform"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// description
	// Required: true
	Description *string `json:"description"`

	// modifiedat
	// Required: true
	// Format: date-time
	ModifiedAt strfmt.DateTime `json:"modifiedAt"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// oauthaccesstokenexpiration
	// Format: int32
	OauthAccessTokenExpiration int32 `json:"oauthAccessTokenExpiration,omitempty"`

	// oauthaccesstokenexpirationtimeunit
	OauthAccessTokenExpirationTimeUnit string `json:"oauthAccessTokenExpirationTimeUnit,omitempty"`

	// oauthclienttype
	// Required: true
	OauthClientType *string `json:"oauthClientType"`

	// oauthrefreshtokenexpiration
	// Format: int32
	OauthRefreshTokenExpiration int32 `json:"oauthRefreshTokenExpiration,omitempty"`

	// oauthrefreshtokenexpirationtimeunit
	OauthRefreshTokenExpirationTimeUnit string `json:"oauthRefreshTokenExpirationTimeUnit,omitempty"`

	// parentnamespace
	ParentNamespace string `json:"parentNamespace,omitempty"`

	// redirecturi
	// Required: true
	RedirectURI *string `json:"redirectUri"`

	// roles
	Roles []string `json:"roles,omitempty"`

	// scopes
	// Required: true
	Scopes []string `json:"scopes"`

	// twofactorenabled
	// Required: true
	TwoFactorEnabled *bool `json:"twoFactorEnabled"`
}

// Validate validates this Clientmodel client V3 response
func (m *ClientmodelClientV3Response) Validate(formats strfmt.Registry) error {
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
	if err := m.validateClientPermissions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientPlatform(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateModifiedAt(formats); err != nil {
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
	if err := m.validateScopes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTwoFactorEnabled(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelClientV3Response) validateAudiences(formats strfmt.Registry) error {

	if err := validate.Required("audiences", "body", m.Audiences); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateBaseURI(formats strfmt.Registry) error {

	if err := validate.Required("baseUri", "body", m.BaseURI); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("clientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateClientName(formats strfmt.Registry) error {

	if err := validate.Required("clientName", "body", m.ClientName); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateClientPermissions(formats strfmt.Registry) error {

	if err := validate.Required("clientPermissions", "body", m.ClientPermissions); err != nil {
		return err
	}

	for i := 0; i < len(m.ClientPermissions); i++ {
		if swag.IsZero(m.ClientPermissions[i]) { // not required
			continue
		}

		if m.ClientPermissions[i] != nil {
			if err := m.ClientPermissions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("clientPermissions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ClientmodelClientV3Response) validateClientPlatform(formats strfmt.Registry) error {

	if err := validate.Required("clientPlatform", "body", m.ClientPlatform); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateModifiedAt(formats strfmt.Registry) error {

	if err := validate.Required("modifiedAt", "body", strfmt.DateTime(m.ModifiedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("modifiedAt", "body", "date-time", m.ModifiedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateOauthClientType(formats strfmt.Registry) error {

	if err := validate.Required("oauthClientType", "body", m.OauthClientType); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("redirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateScopes(formats strfmt.Registry) error {

	if err := validate.Required("scopes", "body", m.Scopes); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientV3Response) validateTwoFactorEnabled(formats strfmt.Registry) error {

	if err := validate.Required("twoFactorEnabled", "body", m.TwoFactorEnabled); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelClientV3Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelClientV3Response) UnmarshalBinary(b []byte) error {
	var res ClientmodelClientV3Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
