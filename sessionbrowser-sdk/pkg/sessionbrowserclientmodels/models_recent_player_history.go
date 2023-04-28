// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionbrowserclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsRecentPlayerHistory Models recent player history
//
// swagger:model Models recent player history.
type ModelsRecentPlayerHistory struct {

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// other_display_name
	// Required: true
	OtherDisplayName *string `json:"other_display_name"`

	// other_id
	// Required: true
	OtherID *string `json:"other_id"`

	// updated_at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updated_at"`

	// user_id
	// Required: true
	UserID *string `json:"user_id"`
}

// Validate validates this Models recent player history
func (m *ModelsRecentPlayerHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOtherDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOtherID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

func (m *ModelsRecentPlayerHistory) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRecentPlayerHistory) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRecentPlayerHistory) validateOtherDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("other_display_name", "body", m.OtherDisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRecentPlayerHistory) validateOtherID(formats strfmt.Registry) error {

	if err := validate.Required("other_id", "body", m.OtherID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRecentPlayerHistory) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updated_at", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updated_at", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRecentPlayerHistory) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRecentPlayerHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRecentPlayerHistory) UnmarshalBinary(b []byte) error {
	var res ModelsRecentPlayerHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
