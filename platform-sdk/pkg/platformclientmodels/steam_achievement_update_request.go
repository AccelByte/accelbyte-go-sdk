// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// SteamAchievementUpdateRequest Steam achievement update request
//
// swagger:model Steam achievement update request.
type SteamAchievementUpdateRequest struct {

	// achievements to be updated
	Achievements []*SteamAchievement `json:"achievements,omitempty"`

	// steam user id
	SteamUserID string `json:"steamUserId,omitempty"`
}

// Validate validates this Steam achievement update request
func (m *SteamAchievementUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *SteamAchievementUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SteamAchievementUpdateRequest) UnmarshalBinary(b []byte) error {
	var res SteamAchievementUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
