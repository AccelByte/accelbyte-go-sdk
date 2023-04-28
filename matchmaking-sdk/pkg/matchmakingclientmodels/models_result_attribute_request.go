// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsResultAttributeRequest Models result attribute request
//
// swagger:model Models result attribute request.
type ModelsResultAttributeRequest struct {

	// attribute
	// Required: true
	Attribute string `json:"attribute"`

	// value
	// Required: true
	// Format: double
	Value float64 `json:"value"`
}

// Validate validates this Models result attribute request
func (m *ModelsResultAttributeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAttribute(formats); err != nil {
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

func (m *ModelsResultAttributeRequest) validateAttribute(formats strfmt.Registry) error {

	if err := validate.Required("attribute", "body", m.Attribute); err != nil {
		return err
	}

	return nil
}

func (m *ModelsResultAttributeRequest) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsResultAttributeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsResultAttributeRequest) UnmarshalBinary(b []byte) error {
	var res ModelsResultAttributeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
