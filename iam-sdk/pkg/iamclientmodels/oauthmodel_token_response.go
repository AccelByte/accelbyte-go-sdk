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

// OauthmodelTokenResponse Oauthmodel token response
//
// swagger:model Oauthmodel token response.
type OauthmodelTokenResponse struct {

	// access_token
	// Required: true
	AccessToken *string `json:"access_token"`

	// bans
	// Required: true
	Bans []*AccountcommonJWTBanV3 `json:"bans"`

	// will get from xbox dpi if it exists
	DeviceID string `json:"device_id,omitempty"`

	// display_name
	// Required: true
	DisplayName *string `json:"display_name"`

	// expires_in
	// Required: true
	// Format: int32
	ExpiresIn *int32 `json:"expires_in"`

	// is_comply
	IsComply bool `json:"is_comply"`

	// jflgs
	// Format: int32
	Jflgs int32 `json:"jflgs,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// namespace_roles
	// Required: true
	NamespaceRoles []*AccountcommonNamespaceRole `json:"namespace_roles"`

	// permissions
	// Required: true
	Permissions []*AccountcommonPermission `json:"permissions"`

	// platform_id
	PlatformID string `json:"platform_id,omitempty"`

	// platform_user_id
	PlatformUserID string `json:"platform_user_id,omitempty"`

	// refresh_expires_in
	// Format: int32
	RefreshExpiresIn int32 `json:"refresh_expires_in,omitempty"`

	// refresh_token
	// Required: true
	RefreshToken *string `json:"refresh_token"`

	// roles
	// Required: true
	Roles []string `json:"roles"`

	// token_type
	// Required: true
	TokenType *string `json:"token_type"`

	// user_id
	// Required: true
	UserID *string `json:"user_id"`
}

// Validate validates this Oauthmodel token response
func (m *OauthmodelTokenResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAccessToken(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBans(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpiresIn(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespaceRoles(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePermissions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRefreshToken(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoles(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTokenType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelTokenResponse) validateAccessToken(formats strfmt.Registry) error {

	if err := validate.Required("access_token", "body", m.AccessToken); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelTokenResponse) validateBans(formats strfmt.Registry) error {

	if err := validate.Required("bans", "body", m.Bans); err != nil {
		return err
	}

	for i := 0; i < len(m.Bans); i++ {
		if swag.IsZero(m.Bans[i]) { // not required
			continue
		}

		if m.Bans[i] != nil {
			if err := m.Bans[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("bans" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *OauthmodelTokenResponse) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("display_name", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelTokenResponse) validateExpiresIn(formats strfmt.Registry) error {

	if err := validate.Required("expires_in", "body", m.ExpiresIn); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelTokenResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelTokenResponse) validateNamespaceRoles(formats strfmt.Registry) error {

	if err := validate.Required("namespace_roles", "body", m.NamespaceRoles); err != nil {
		return err
	}

	for i := 0; i < len(m.NamespaceRoles); i++ {
		if swag.IsZero(m.NamespaceRoles[i]) { // not required
			continue
		}

		if m.NamespaceRoles[i] != nil {
			if err := m.NamespaceRoles[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("namespace_roles" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *OauthmodelTokenResponse) validatePermissions(formats strfmt.Registry) error {

	if err := validate.Required("permissions", "body", m.Permissions); err != nil {
		return err
	}

	for i := 0; i < len(m.Permissions); i++ {
		if swag.IsZero(m.Permissions[i]) { // not required
			continue
		}

		if m.Permissions[i] != nil {
			if err := m.Permissions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("permissions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *OauthmodelTokenResponse) validateRefreshToken(formats strfmt.Registry) error {

	if err := validate.Required("refresh_token", "body", m.RefreshToken); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelTokenResponse) validateRoles(formats strfmt.Registry) error {

	if err := validate.Required("roles", "body", m.Roles); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelTokenResponse) validateTokenType(formats strfmt.Registry) error {

	if err := validate.Required("token_type", "body", m.TokenType); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelTokenResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelTokenResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelTokenResponse) UnmarshalBinary(b []byte) error {
	var res OauthmodelTokenResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
