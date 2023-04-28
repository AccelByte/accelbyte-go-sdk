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

// ModelsBlockedPlayerData Models blocked player data
//
// swagger:model Models blocked player data.
type ModelsBlockedPlayerData struct {

	// blockedat
	// Required: true
	// Format: date-time
	BlockedAt strfmt.DateTime `json:"blockedAt"`

	// blockeduserid
	// Required: true
	BlockedUserID *string `json:"blockedUserId"`
}

// Validate validates this Models blocked player data
func (m *ModelsBlockedPlayerData) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBlockedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBlockedUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBlockedPlayerData) validateBlockedAt(formats strfmt.Registry) error {

	if err := validate.Required("blockedAt", "body", strfmt.DateTime(m.BlockedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("blockedAt", "body", "date-time", m.BlockedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBlockedPlayerData) validateBlockedUserID(formats strfmt.Registry) error {

	if err := validate.Required("blockedUserId", "body", m.BlockedUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBlockedPlayerData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBlockedPlayerData) UnmarshalBinary(b []byte) error {
	var res ModelsBlockedPlayerData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
