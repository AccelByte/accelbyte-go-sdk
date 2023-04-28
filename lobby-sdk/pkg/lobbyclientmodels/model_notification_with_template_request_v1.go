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

// ModelNotificationWithTemplateRequestV1 Model notification with template request V1
//
// swagger:model Model notification with template request V1.
type ModelNotificationWithTemplateRequestV1 struct {

	// templatecontext
	// Required: true
	TemplateContext map[string]string `json:"templateContext"`

	// templatelanguage
	// Required: true
	TemplateLanguage *string `json:"templateLanguage"`

	// templateslug
	// Required: true
	TemplateSlug *string `json:"templateSlug"`

	// topicname
	// Required: true
	TopicName *string `json:"topicName"`
}

// Validate validates this Model notification with template request V1
func (m *ModelNotificationWithTemplateRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTemplateLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTemplateSlug(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTopicName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelNotificationWithTemplateRequestV1) validateTemplateLanguage(formats strfmt.Registry) error {

	if err := validate.Required("templateLanguage", "body", m.TemplateLanguage); err != nil {
		return err
	}

	return nil
}

func (m *ModelNotificationWithTemplateRequestV1) validateTemplateSlug(formats strfmt.Registry) error {

	if err := validate.Required("templateSlug", "body", m.TemplateSlug); err != nil {
		return err
	}

	return nil
}

func (m *ModelNotificationWithTemplateRequestV1) validateTopicName(formats strfmt.Registry) error {

	if err := validate.Required("topicName", "body", m.TopicName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelNotificationWithTemplateRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelNotificationWithTemplateRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelNotificationWithTemplateRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
