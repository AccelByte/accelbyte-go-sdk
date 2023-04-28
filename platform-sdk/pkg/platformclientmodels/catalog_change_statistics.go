// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// CatalogChangeStatistics Catalog change statistics
//
// swagger:model Catalog change statistics.
type CatalogChangeStatistics struct {

	// all change count
	// Required: true
	// Format: int64
	Count *int64 `json:"count"`

	// selected change count
	// Required: true
	// Format: int64
	SelectedCount *int64 `json:"selectedCount"`
}

// Validate validates this Catalog change statistics
func (m *CatalogChangeStatistics) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSelectedCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CatalogChangeStatistics) validateCount(formats strfmt.Registry) error {

	if err := validate.Required("count", "body", m.Count); err != nil {
		return err
	}

	return nil
}

func (m *CatalogChangeStatistics) validateSelectedCount(formats strfmt.Registry) error {

	if err := validate.Required("selectedCount", "body", m.SelectedCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CatalogChangeStatistics) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CatalogChangeStatistics) UnmarshalBinary(b []byte) error {
	var res CatalogChangeStatistics
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
