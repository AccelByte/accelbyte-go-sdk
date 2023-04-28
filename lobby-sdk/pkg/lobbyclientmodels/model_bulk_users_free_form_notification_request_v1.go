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

// ModelBulkUsersFreeFormNotificationRequestV1 Model bulk users free form notification request V1
//
// swagger:model Model bulk users free form notification request V1.
type ModelBulkUsersFreeFormNotificationRequestV1 struct {

	// free form message
	// Required: true
	Message *string `json:"message"`

	// topicname
	// Required: true
	TopicName *string `json:"topicName"`

	// userids
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Model bulk users free form notification request V1
func (m *ModelBulkUsersFreeFormNotificationRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTopicName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelBulkUsersFreeFormNotificationRequestV1) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

func (m *ModelBulkUsersFreeFormNotificationRequestV1) validateTopicName(formats strfmt.Registry) error {

	if err := validate.Required("topicName", "body", m.TopicName); err != nil {
		return err
	}

	return nil
}

func (m *ModelBulkUsersFreeFormNotificationRequestV1) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelBulkUsersFreeFormNotificationRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelBulkUsersFreeFormNotificationRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelBulkUsersFreeFormNotificationRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
