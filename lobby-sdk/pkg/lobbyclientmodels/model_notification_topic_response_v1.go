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

// ModelNotificationTopicResponseV1 Model notification topic response V1
//
// swagger:model Model notification topic response V1.
type ModelNotificationTopicResponseV1 struct {

	// createdat
	// Required: true
	// Format: int64
	CreatedAt *int64 `json:"createdAt"`

	// description
	// Required: true
	Description *string `json:"description"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// topic name, should be alphabets, no special char except underscore, uppercase and no spacing
	// Required: true
	TopicName *string `json:"topicName"`
}

// Validate validates this Model notification topic response V1
func (m *ModelNotificationTopicResponseV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *ModelNotificationTopicResponseV1) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelNotificationTopicResponseV1) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelNotificationTopicResponseV1) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelNotificationTopicResponseV1) validateTopicName(formats strfmt.Registry) error {

	if err := validate.Required("topicName", "body", m.TopicName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelNotificationTopicResponseV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelNotificationTopicResponseV1) UnmarshalBinary(b []byte) error {
	var res ModelNotificationTopicResponseV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
