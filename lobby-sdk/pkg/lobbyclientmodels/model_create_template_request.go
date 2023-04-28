// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelCreateTemplateRequest Model create template request
//
// swagger:model Model create template request.
type ModelCreateTemplateRequest struct {

	// template content, use handle bar {{key}} for replaceable context
	// Required: true
	TemplateContent *string `json:"templateContent"`

	// template language, follows IETF BCP 47 standard
	// Required: true
	TemplateLanguage *string `json:"templateLanguage"`

	// template identifier, only alphabet characters and hyphens are permitted
	// Required: true
	TemplateSlug *string `json:"templateSlug"`
}

// Validate validates this Model create template request
func (m *ModelCreateTemplateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTemplateContent(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTemplateLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTemplateSlug(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelCreateTemplateRequest) validateTemplateContent(formats strfmt.Registry) error {

	if err := validate.Required("templateContent", "body", m.TemplateContent); err != nil {
		return err
	}

	return nil
}

func (m *ModelCreateTemplateRequest) validateTemplateLanguage(formats strfmt.Registry) error {

	if err := validate.Required("templateLanguage", "body", m.TemplateLanguage); err != nil {
		return err
	}

	return nil
}

func (m *ModelCreateTemplateRequest) validateTemplateSlug(formats strfmt.Registry) error {

	if err := validate.Required("templateSlug", "body", m.TemplateSlug); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCreateTemplateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCreateTemplateRequest) UnmarshalBinary(b []byte) error {
	var res ModelCreateTemplateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
