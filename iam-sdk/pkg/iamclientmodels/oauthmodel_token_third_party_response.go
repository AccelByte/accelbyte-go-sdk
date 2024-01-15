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

// OauthmodelTokenThirdPartyResponse Oauthmodel token third party response
//
// swagger:model Oauthmodel token third party response.
type OauthmodelTokenThirdPartyResponse struct {

	// platformuserid
	PlatformUserID string `json:"platformUserId,omitempty"`

	// platform_token
	// Required: true
	PlatformToken *string `json:"platform_token"`

	// platform_token_expires_at
	// Format: int64
	PlatformTokenExpiresAt int64 `json:"platform_token_expires_at,omitempty"`

	// sand_box_id
	SandBoxID string `json:"sand_box_id,omitempty"`
}

// Validate validates this Oauthmodel token third party response
func (m *OauthmodelTokenThirdPartyResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformToken(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelTokenThirdPartyResponse) validatePlatformToken(formats strfmt.Registry) error {

	if err := validate.Required("platform_token", "body", m.PlatformToken); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelTokenThirdPartyResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelTokenThirdPartyResponse) UnmarshalBinary(b []byte) error {
	var res OauthmodelTokenThirdPartyResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
