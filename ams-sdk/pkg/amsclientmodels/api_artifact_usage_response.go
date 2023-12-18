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

// APIArtifactUsageResponse Api artifact usage response
//
// swagger:model Api artifact usage response.
type APIArtifactUsageResponse struct {

	// quotabytes
	// Required: true
	// Format: int64
	QuotaBytes *int64 `json:"quotaBytes"`

	// remainingbytes
	// Required: true
	// Format: int64
	RemainingBytes *int64 `json:"remainingBytes"`

	// usedbytes
	// Required: true
	// Format: int64
	UsedBytes *int64 `json:"usedBytes"`
}

// Validate validates this Api artifact usage response
func (m *APIArtifactUsageResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateQuotaBytes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRemainingBytes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUsedBytes(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIArtifactUsageResponse) validateQuotaBytes(formats strfmt.Registry) error {

	if err := validate.Required("quotaBytes", "body", m.QuotaBytes); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactUsageResponse) validateRemainingBytes(formats strfmt.Registry) error {

	if err := validate.Required("remainingBytes", "body", m.RemainingBytes); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactUsageResponse) validateUsedBytes(formats strfmt.Registry) error {

	if err := validate.Required("usedBytes", "body", m.UsedBytes); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIArtifactUsageResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIArtifactUsageResponse) UnmarshalBinary(b []byte) error {
	var res APIArtifactUsageResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
