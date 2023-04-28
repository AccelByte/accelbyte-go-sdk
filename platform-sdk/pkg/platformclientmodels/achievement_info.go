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

// AchievementInfo Achievement info
//
// swagger:model Achievement info.
type AchievementInfo struct {

	// achievement id
	ID string `json:"id,omitempty"`

	// achievement display name
	Name string `json:"name,omitempty"`

	// achievement progress
	ProgressState string `json:"progressState,omitempty"`

	// achievement progression
	Progression interface{} `json:"progression,omitempty"`

	// service config id
	ServiceConfigID string `json:"serviceConfigId,omitempty"`
}

// Validate validates this Achievement info
func (m *AchievementInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AchievementInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AchievementInfo) UnmarshalBinary(b []byte) error {
	var res AchievementInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
