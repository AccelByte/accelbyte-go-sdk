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

// ModelFreeFormNotificationRequest Model free form notification request
//
// swagger:model Model free form notification request.
type ModelFreeFormNotificationRequest struct {

	// free form message
	// Required: true
	Message *string `json:"message"`

	// topic
	// Required: true
	Topic *string `json:"topic"`
}

// Validate validates this Model free form notification request
func (m *ModelFreeFormNotificationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMessage(formats); err != nil {
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

func (m *ModelFreeFormNotificationRequest) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

func (m *ModelFreeFormNotificationRequest) validateTopic(formats strfmt.Registry) error {

	if err := validate.Required("topic", "body", m.Topic); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelFreeFormNotificationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelFreeFormNotificationRequest) UnmarshalBinary(b []byte) error {
	var res ModelFreeFormNotificationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
