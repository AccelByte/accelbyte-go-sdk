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

// ModelFreeFormNotificationRequestV1 Model free form notification request V1
//
// swagger:model Model free form notification request V1.
type ModelFreeFormNotificationRequestV1 struct {

	// free form message
	// Required: true
	Message *string `json:"message"`

	// topicname
	// Required: true
	TopicName *string `json:"topicName"`
}

// Validate validates this Model free form notification request V1
func (m *ModelFreeFormNotificationRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMessage(formats); err != nil {
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

func (m *ModelFreeFormNotificationRequestV1) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

func (m *ModelFreeFormNotificationRequestV1) validateTopicName(formats strfmt.Registry) error {

	if err := validate.Required("topicName", "body", m.TopicName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelFreeFormNotificationRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelFreeFormNotificationRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelFreeFormNotificationRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
