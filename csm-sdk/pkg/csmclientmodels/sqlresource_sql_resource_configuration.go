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

// SqlresourceSQLResourceConfiguration Sqlresource SQL resource configuration
//
// swagger:model Sqlresource SQL resource configuration.
type SqlresourceSQLResourceConfiguration struct {

	// maxacu
	// Required: true
	// Format: double
	MaxACU *float64 `json:"maxACU"`

	// minacu
	// Required: true
	// Format: double
	MinACU *float64 `json:"minACU"`

	// multiaz
	// Required: true
	MultiAZ *bool `json:"multiAZ"`

	// profilename
	ProfileName string `json:"profileName,omitempty"`
}

// Validate validates this Sqlresource SQL resource configuration
func (m *SqlresourceSQLResourceConfiguration) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxACU(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinACU(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMultiAZ(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SqlresourceSQLResourceConfiguration) validateMaxACU(formats strfmt.Registry) error {

	if err := validate.Required("maxACU", "body", m.MaxACU); err != nil {
		return err
	}

	return nil
}

func (m *SqlresourceSQLResourceConfiguration) validateMinACU(formats strfmt.Registry) error {

	if err := validate.Required("minACU", "body", m.MinACU); err != nil {
		return err
	}

	return nil
}

func (m *SqlresourceSQLResourceConfiguration) validateMultiAZ(formats strfmt.Registry) error {

	if err := validate.Required("multiAZ", "body", m.MultiAZ); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SqlresourceSQLResourceConfiguration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SqlresourceSQLResourceConfiguration) UnmarshalBinary(b []byte) error {
	var res SqlresourceSQLResourceConfiguration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
