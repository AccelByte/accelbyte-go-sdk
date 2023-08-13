// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// OauthmodelPlatformTokenRefreshResponseV3 Oauthmodel platform token refresh response V3
//
// swagger:model Oauthmodel platform token refresh response V3.
type OauthmodelPlatformTokenRefreshResponseV3 struct {

	// avatarurl
	AvatarURL string `json:"avatarUrl,omitempty"`

	// country
	Country string `json:"country,omitempty"`

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// platformtokenexpiresat
	// Format: int64
	PlatformTokenExpiresAt int64 `json:"platformTokenExpiresAt,omitempty"`

	// platformuserid
	PlatformUserID string `json:"platformUserId,omitempty"`
}

// Validate validates this Oauthmodel platform token refresh response V3
func (m *OauthmodelPlatformTokenRefreshResponseV3) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelPlatformTokenRefreshResponseV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelPlatformTokenRefreshResponseV3) UnmarshalBinary(b []byte) error {
	var res OauthmodelPlatformTokenRefreshResponseV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
