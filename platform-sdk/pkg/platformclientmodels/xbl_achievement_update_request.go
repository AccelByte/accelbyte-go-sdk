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

// XblAchievementUpdateRequest Xbl achievement update request
//
// swagger:model Xbl achievement update request.
type XblAchievementUpdateRequest struct {

	// achievements to be updated
	Achievements []*XboxAchievement `json:"achievements,omitempty"`

	// serviceconfigid
	ServiceConfigID string `json:"serviceConfigId,omitempty"`

	// titleid
	TitleID string `json:"titleId,omitempty"`

	// xbox live user id
	XboxUserID string `json:"xboxUserId,omitempty"`
}

// Validate validates this Xbl achievement update request
func (m *XblAchievementUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *XblAchievementUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XblAchievementUpdateRequest) UnmarshalBinary(b []byte) error {
	var res XblAchievementUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
