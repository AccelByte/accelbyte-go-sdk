// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsBlockedByPlayerData Models blocked by player data
//
// swagger:model Models blocked by player data.
type ModelsBlockedByPlayerData struct {

	// blockedat
	// Required: true
	// Format: date-time
	BlockedAt strfmt.DateTime `json:"blockedAt"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models blocked by player data
func (m *ModelsBlockedByPlayerData) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBlockedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBlockedByPlayerData) validateBlockedAt(formats strfmt.Registry) error {

	if err := validate.Required("blockedAt", "body", strfmt.DateTime(m.BlockedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("blockedAt", "body", "date-time", m.BlockedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBlockedByPlayerData) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBlockedByPlayerData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBlockedByPlayerData) UnmarshalBinary(b []byte) error {
	var res ModelsBlockedByPlayerData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
