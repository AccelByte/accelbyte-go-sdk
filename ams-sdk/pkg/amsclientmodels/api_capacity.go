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

// APICapacity Api capacity
//
// swagger:model Api capacity.
type APICapacity struct {

	// region
	// Required: true
	Region *string `json:"region"`

	// vmcount
	// Required: true
	// Format: int32
	VMCount *int32 `json:"vmCount"`
}

// Validate validates this Api capacity
func (m *APICapacity) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateVMCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APICapacity) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *APICapacity) validateVMCount(formats strfmt.Registry) error {

	if err := validate.Required("vmCount", "body", m.VMCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APICapacity) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APICapacity) UnmarshalBinary(b []byte) error {
	var res APICapacity
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
