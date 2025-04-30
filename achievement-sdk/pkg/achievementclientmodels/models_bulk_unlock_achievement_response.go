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

// ModelsBulkUnlockAchievementResponse Models bulk unlock achievement response
//
// swagger:model Models bulk unlock achievement response.
type ModelsBulkUnlockAchievementResponse struct {

	// achievementcode
	// Required: true
	AchievementCode *string `json:"achievementCode"`

	// errordetail
	ErrorDetail *ModelsErrorDetails `json:"errorDetail,omitempty"`

	// success
	// Required: true
	Success *bool `json:"success"`
}

// Validate validates this Models bulk unlock achievement response
func (m *ModelsBulkUnlockAchievementResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAchievementCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSuccess(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBulkUnlockAchievementResponse) validateAchievementCode(formats strfmt.Registry) error {

	if err := validate.Required("achievementCode", "body", m.AchievementCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBulkUnlockAchievementResponse) validateSuccess(formats strfmt.Registry) error {

	if err := validate.Required("success", "body", m.Success); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBulkUnlockAchievementResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBulkUnlockAchievementResponse) UnmarshalBinary(b []byte) error {
	var res ModelsBulkUnlockAchievementResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
