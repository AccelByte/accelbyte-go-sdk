// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDeletionStatus Models deletion status
//
// swagger:model Models deletion status.
type ModelsDeletionStatus struct {

	// deletionstatus
	// Required: true
	DeletionStatus *bool `json:"DeletionStatus"`

	// displayname
	// Required: true
	DisplayName *string `json:"DisplayName"`

	// executiondate
	// Format: date-time
	ExecutionDate *strfmt.DateTime `json:"ExecutionDate,omitempty"`

	// status
	// Required: true
	Status *string `json:"Status"`

	// userid
	// Required: true
	UserID *string `json:"UserID"`
}

// Validate validates this Models deletion status
func (m *ModelsDeletionStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeletionStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
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

func (m *ModelsDeletionStatus) validateDeletionStatus(formats strfmt.Registry) error {

	if err := validate.Required("DeletionStatus", "body", m.DeletionStatus); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDeletionStatus) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("DisplayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDeletionStatus) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("Status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDeletionStatus) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDeletionStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDeletionStatus) UnmarshalBinary(b []byte) error {
	var res ModelsDeletionStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
