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

// ModelNotificationWithTemplateRequest Model notification with template request
//
// swagger:model Model notification with template request.
type ModelNotificationWithTemplateRequest struct {

	// templatecontext
	// Required: true
	TemplateContext map[string]string `json:"templateContext"`

	// templatelanguage
	// Required: true
	TemplateLanguage *string `json:"templateLanguage"`

	// templateslug
	// Required: true
	TemplateSlug *string `json:"templateSlug"`

	// topic
	// Required: true
	Topic *string `json:"topic"`
}

// Validate validates this Model notification with template request
func (m *ModelNotificationWithTemplateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTemplateLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTemplateSlug(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTopic(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelNotificationWithTemplateRequest) validateTemplateLanguage(formats strfmt.Registry) error {

	if err := validate.Required("templateLanguage", "body", m.TemplateLanguage); err != nil {
		return err
	}

	return nil
}

func (m *ModelNotificationWithTemplateRequest) validateTemplateSlug(formats strfmt.Registry) error {

	if err := validate.Required("templateSlug", "body", m.TemplateSlug); err != nil {
		return err
	}

	return nil
}

func (m *ModelNotificationWithTemplateRequest) validateTopic(formats strfmt.Registry) error {

	if err := validate.Required("topic", "body", m.Topic); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelNotificationWithTemplateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelNotificationWithTemplateRequest) UnmarshalBinary(b []byte) error {
	var res ModelNotificationWithTemplateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
