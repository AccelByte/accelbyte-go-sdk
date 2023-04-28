// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPayloadURL Models payload URL
//
// swagger:model Models payload URL.
type ModelsPayloadURL struct {

	// source
	// Required: true
	Source *string `json:"source"`

	// url
	// Required: true
	URL *string `json:"url"`
}

// Validate validates this Models payload URL
func (m *ModelsPayloadURL) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSource(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPayloadURL) validateSource(formats strfmt.Registry) error {

	if err := validate.Required("source", "body", m.Source); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPayloadURL) validateURL(formats strfmt.Registry) error {

	if err := validate.Required("url", "body", m.URL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPayloadURL) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPayloadURL) UnmarshalBinary(b []byte) error {
	var res ModelsPayloadURL
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
