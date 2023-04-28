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

// ModelTemplateContent Model template content
//
// swagger:model Model template content.
type ModelTemplateContent struct {

	// draft
	// Required: true
	Draft *string `json:"draft"`

	// published
	// Required: true
	Published *string `json:"published"`
}

// Validate validates this Model template content
func (m *ModelTemplateContent) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDraft(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePublished(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelTemplateContent) validateDraft(formats strfmt.Registry) error {

	if err := validate.Required("draft", "body", m.Draft); err != nil {
		return err
	}

	return nil
}

func (m *ModelTemplateContent) validatePublished(formats strfmt.Registry) error {

	if err := validate.Required("published", "body", m.Published); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelTemplateContent) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelTemplateContent) UnmarshalBinary(b []byte) error {
	var res ModelTemplateContent
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
