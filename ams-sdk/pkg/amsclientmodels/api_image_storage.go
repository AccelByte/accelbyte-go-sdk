// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIImageStorage Api image storage
//
// swagger:model Api image storage.
type APIImageStorage struct {

	// currentmarkedfordeletionbytes
	// Required: true
	// Format: int64
	CurrentMarkedForDeletionBytes *int64 `json:"currentMarkedForDeletionBytes"`

	// currentusagebytes
	// Required: true
	// Format: int64
	CurrentUsageBytes *int64 `json:"currentUsageBytes"`

	// quotabytes
	// Required: true
	// Format: int64
	QuotaBytes *int64 `json:"quotaBytes"`
}

// Validate validates this Api image storage
func (m *APIImageStorage) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrentMarkedForDeletionBytes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrentUsageBytes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQuotaBytes(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIImageStorage) validateCurrentMarkedForDeletionBytes(formats strfmt.Registry) error {

	if err := validate.Required("currentMarkedForDeletionBytes", "body", m.CurrentMarkedForDeletionBytes); err != nil {
		return err
	}

	return nil
}

func (m *APIImageStorage) validateCurrentUsageBytes(formats strfmt.Registry) error {

	if err := validate.Required("currentUsageBytes", "body", m.CurrentUsageBytes); err != nil {
		return err
	}

	return nil
}

func (m *APIImageStorage) validateQuotaBytes(formats strfmt.Registry) error {

	if err := validate.Required("quotaBytes", "body", m.QuotaBytes); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIImageStorage) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIImageStorage) UnmarshalBinary(b []byte) error {
	var res APIImageStorage
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
