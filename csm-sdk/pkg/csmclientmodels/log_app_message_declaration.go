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

// LogAppMessageDeclaration Log app message declaration
//
// swagger:model Log app message declaration.
type LogAppMessageDeclaration struct {

	// attributes
	// Required: true
	Attributes []string `json:"Attributes"`

	// code
	// Required: true
	Code *string `json:"Code"`

	// codename
	// Required: true
	CodeName *string `json:"CodeName"`

	// section
	// Required: true
	Section *string `json:"Section"`

	// service
	// Required: true
	Service *string `json:"Service"`

	// text
	// Required: true
	Text *string `json:"Text"`
}

// Validate validates this Log app message declaration
func (m *LogAppMessageDeclaration) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAttributes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCodeName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSection(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateService(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateText(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *LogAppMessageDeclaration) validateAttributes(formats strfmt.Registry) error {

	if err := validate.Required("Attributes", "body", m.Attributes); err != nil {
		return err
	}

	return nil
}

func (m *LogAppMessageDeclaration) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("Code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *LogAppMessageDeclaration) validateCodeName(formats strfmt.Registry) error {

	if err := validate.Required("CodeName", "body", m.CodeName); err != nil {
		return err
	}

	return nil
}

func (m *LogAppMessageDeclaration) validateSection(formats strfmt.Registry) error {

	if err := validate.Required("Section", "body", m.Section); err != nil {
		return err
	}

	return nil
}

func (m *LogAppMessageDeclaration) validateService(formats strfmt.Registry) error {

	if err := validate.Required("Service", "body", m.Service); err != nil {
		return err
	}

	return nil
}

func (m *LogAppMessageDeclaration) validateText(formats strfmt.Registry) error {

	if err := validate.Required("Text", "body", m.Text); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *LogAppMessageDeclaration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *LogAppMessageDeclaration) UnmarshalBinary(b []byte) error {
	var res LogAppMessageDeclaration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
