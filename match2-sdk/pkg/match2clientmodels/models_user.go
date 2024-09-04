// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUser Models user
//
// swagger:model Models user.
type ModelsUser struct {

	// id
	// Required: true
	ID *string `json:"ID"`

	// platformid
	// Required: true
	PlatformID *string `json:"PlatformID"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"PlatformUserID"`

	// previousstatus
	PreviousStatus string `json:"PreviousStatus,omitempty"`

	// status
	// Required: true
	Status *string `json:"Status"`

	// statusv2
	// Required: true
	StatusV2 *string `json:"StatusV2"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"UpdatedAt"`
}

// Validate validates this Models user
func (m *ModelsUser) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatusV2(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUser) validateID(formats strfmt.Registry) error {

	if err := validate.Required("ID", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUser) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("PlatformID", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUser) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("PlatformUserID", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUser) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("Status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUser) validateStatusV2(formats strfmt.Registry) error {

	if err := validate.Required("StatusV2", "body", m.StatusV2); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUser) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("UpdatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("UpdatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUser) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUser) UnmarshalBinary(b []byte) error {
	var res ModelsUser
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
