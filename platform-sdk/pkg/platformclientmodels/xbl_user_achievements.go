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

// XblUserAchievements Xbl user achievements
//
// swagger:model Xbl user achievements.
type XblUserAchievements struct {

	// user achievements, including unlocked and in progress
	Achievements []*AchievementInfo `json:"achievements,omitempty"`
}

// Validate validates this Xbl user achievements
func (m *XblUserAchievements) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *XblUserAchievements) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XblUserAchievements) UnmarshalBinary(b []byte) error {
	var res XblUserAchievements
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
