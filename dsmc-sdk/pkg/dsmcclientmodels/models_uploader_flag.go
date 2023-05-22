// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUploaderFlag Models uploader flag
//
// swagger:model Models uploader flag.
type ModelsUploaderFlag struct {

	// name
	// Required: true
	Name *string `json:"name"`

	// shorthand
	// Required: true
	Shorthand *string `json:"shorthand"`

	// value
	// Required: true
	Value *string `json:"value"`
}

// Validate validates this Models uploader flag
func (m *ModelsUploaderFlag) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateShorthand(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUploaderFlag) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUploaderFlag) validateShorthand(formats strfmt.Registry) error {

	if err := validate.Required("shorthand", "body", m.Shorthand); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUploaderFlag) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUploaderFlag) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUploaderFlag) UnmarshalBinary(b []byte) error {
	var res ModelsUploaderFlag
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
