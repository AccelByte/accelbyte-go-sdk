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

// ModelsAchievementOrderUpdateRequest Models achievement order update request
//
// swagger:model Models achievement order update request.
type ModelsAchievementOrderUpdateRequest struct {

	// targetorder
	// Required: true
	// Format: int32
	TargetOrder *int32 `json:"targetOrder"`
}

// Validate validates this Models achievement order update request
func (m *ModelsAchievementOrderUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTargetOrder(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAchievementOrderUpdateRequest) validateTargetOrder(formats strfmt.Registry) error {

	if err := validate.Required("targetOrder", "body", m.TargetOrder); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAchievementOrderUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAchievementOrderUpdateRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAchievementOrderUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
