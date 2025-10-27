// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// NosqlresourceNoSQLResourceConfiguration Nosqlresource no SQL resource configuration
//
// swagger:model Nosqlresource no SQL resource configuration.
type NosqlresourceNoSQLResourceConfiguration struct {

	// maxdcu
	// Required: true
	// Format: double
	MaxDCU *float64 `json:"maxDCU"`

	// mindcu
	// Required: true
	// Format: double
	MinDCU *float64 `json:"minDCU"`

	// profilename
	ProfileName string `json:"profileName,omitempty"`
}

// Validate validates this Nosqlresource no SQL resource configuration
func (m *NosqlresourceNoSQLResourceConfiguration) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxDCU(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinDCU(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *NosqlresourceNoSQLResourceConfiguration) validateMaxDCU(formats strfmt.Registry) error {

	if err := validate.Required("maxDCU", "body", m.MaxDCU); err != nil {
		return err
	}

	return nil
}

func (m *NosqlresourceNoSQLResourceConfiguration) validateMinDCU(formats strfmt.Registry) error {

	if err := validate.Required("minDCU", "body", m.MinDCU); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *NosqlresourceNoSQLResourceConfiguration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *NosqlresourceNoSQLResourceConfiguration) UnmarshalBinary(b []byte) error {
	var res NosqlresourceNoSQLResourceConfiguration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
