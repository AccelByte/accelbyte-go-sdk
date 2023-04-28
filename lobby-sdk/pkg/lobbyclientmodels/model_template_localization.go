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

// ModelTemplateLocalization Model template localization
//
// swagger:model Model template localization.
type ModelTemplateLocalization struct {

	// lastdraftat
	// Required: true
	LastDraftAt *string `json:"lastDraftAt"`

	// lastpublishedat
	// Required: true
	LastPublishedAt *string `json:"lastPublishedAt"`

	// templatecontent
	// Required: true
	TemplateContent *ModelTemplateContent `json:"templateContent"`

	// templatelanguage
	// Required: true
	TemplateLanguage *string `json:"templateLanguage"`

	// templateslug
	// Required: true
	TemplateSlug *string `json:"templateSlug"`
}

// Validate validates this Model template localization
func (m *ModelTemplateLocalization) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLastDraftAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastPublishedAt(formats); err != nil {
		res = append(res, err)
	}
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

func (m *ModelTemplateLocalization) validateLastDraftAt(formats strfmt.Registry) error {

	if err := validate.Required("lastDraftAt", "body", m.LastDraftAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelTemplateLocalization) validateLastPublishedAt(formats strfmt.Registry) error {

	if err := validate.Required("lastPublishedAt", "body", m.LastPublishedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelTemplateLocalization) validateTemplateContent(formats strfmt.Registry) error {

	if err := validate.Required("templateContent", "body", m.TemplateContent); err != nil {
		return err
	}

	if m.TemplateContent != nil {
		if err := m.TemplateContent.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("templateContent")
			}
			return err
		}
	}

	return nil
}

func (m *ModelTemplateLocalization) validateTemplateLanguage(formats strfmt.Registry) error {

	if err := validate.Required("templateLanguage", "body", m.TemplateLanguage); err != nil {
		return err
	}

	return nil
}

func (m *ModelTemplateLocalization) validateTemplateSlug(formats strfmt.Registry) error {

	if err := validate.Required("templateSlug", "body", m.TemplateSlug); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelTemplateLocalization) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelTemplateLocalization) UnmarshalBinary(b []byte) error {
	var res ModelTemplateLocalization
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
