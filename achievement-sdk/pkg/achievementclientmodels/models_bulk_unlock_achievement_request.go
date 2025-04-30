// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievementclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsBulkUnlockAchievementRequest Models bulk unlock achievement request
//
// swagger:model Models bulk unlock achievement request.
type ModelsBulkUnlockAchievementRequest struct {

	// achievementcodes
	// Required: true
	AchievementCodes []string `json:"achievementCodes"`
}

// Validate validates this Models bulk unlock achievement request
func (m *ModelsBulkUnlockAchievementRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAchievementCodes(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBulkUnlockAchievementRequest) validateAchievementCodes(formats strfmt.Registry) error {

	if err := validate.Required("achievementCodes", "body", m.AchievementCodes); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBulkUnlockAchievementRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBulkUnlockAchievementRequest) UnmarshalBinary(b []byte) error {
	var res ModelsBulkUnlockAchievementRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
