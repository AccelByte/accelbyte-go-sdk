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

// ModelPublicThirdPartyPlatformInfo Model public third party platform info
//
// swagger:model Model public third party platform info.
type ModelPublicThirdPartyPlatformInfo struct {

	// appid
	// Required: true
	AppID *string `json:"AppId"`

	// clientid
	// Required: true
	ClientID *string `json:"ClientId"`

	// environment
	// Required: true
	Environment *string `json:"Environment"`

	// isactive
	// Required: true
	IsActive *bool `json:"IsActive"`

	// logourl
	LogoURL string `json:"LogoURL,omitempty"`

	// platformid
	// Required: true
	PlatformID *string `json:"PlatformId"`

	// platformname
	// Required: true
	PlatformName *string `json:"PlatformName"`

	// tokenauthenticationtype
	// Required: true
	TokenAuthenticationType *string `json:"TokenAuthenticationType"`
}

// Validate validates this Model public third party platform info
func (m *ModelPublicThirdPartyPlatformInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnvironment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTokenAuthenticationType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelPublicThirdPartyPlatformInfo) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("AppId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicThirdPartyPlatformInfo) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("ClientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicThirdPartyPlatformInfo) validateEnvironment(formats strfmt.Registry) error {

	if err := validate.Required("Environment", "body", m.Environment); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicThirdPartyPlatformInfo) validateIsActive(formats strfmt.Registry) error {

	if err := validate.Required("IsActive", "body", m.IsActive); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicThirdPartyPlatformInfo) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("PlatformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicThirdPartyPlatformInfo) validatePlatformName(formats strfmt.Registry) error {

	if err := validate.Required("PlatformName", "body", m.PlatformName); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicThirdPartyPlatformInfo) validateTokenAuthenticationType(formats strfmt.Registry) error {

	if err := validate.Required("TokenAuthenticationType", "body", m.TokenAuthenticationType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPublicThirdPartyPlatformInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPublicThirdPartyPlatformInfo) UnmarshalBinary(b []byte) error {
	var res ModelPublicThirdPartyPlatformInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
