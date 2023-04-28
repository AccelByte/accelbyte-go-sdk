// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelEnabledFactorsResponseV4 Model enabled factors response V4
//
// swagger:model Model enabled factors response V4.
type ModelEnabledFactorsResponseV4 struct {

	// default
	// Required: true
	Default *string `json:"default"`

	// enabled
	// Required: true
	Enabled []string `json:"enabled"`
}

// Validate validates this Model enabled factors response V4
func (m *ModelEnabledFactorsResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDefault(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelEnabledFactorsResponseV4) validateDefault(formats strfmt.Registry) error {

	if err := validate.Required("default", "body", m.Default); err != nil {
		return err
	}

	return nil
}

func (m *ModelEnabledFactorsResponseV4) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelEnabledFactorsResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelEnabledFactorsResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelEnabledFactorsResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
