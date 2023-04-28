// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievementclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsIcon Models icon
//
// swagger:model Models icon.
type ModelsIcon struct {

	// slug
	// Required: true
	Slug *string `json:"slug"`

	// url
	// Required: true
	URL *string `json:"url"`
}

// Validate validates this Models icon
func (m *ModelsIcon) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSlug(formats); err != nil {
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

func (m *ModelsIcon) validateSlug(formats strfmt.Registry) error {

	if err := validate.Required("slug", "body", m.Slug); err != nil {
		return err
	}

	return nil
}

func (m *ModelsIcon) validateURL(formats strfmt.Registry) error {

	if err := validate.Required("url", "body", m.URL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsIcon) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsIcon) UnmarshalBinary(b []byte) error {
	var res ModelsIcon
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
