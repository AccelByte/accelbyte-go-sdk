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

// ModelCreateTopicRequest Model create topic request
//
// swagger:model Model create topic request.
type ModelCreateTopicRequest struct {

	// topic description
	// Required: true
	Description *string `json:"description"`

	// topic name, should be alphabets, no special char except underscore, uppercase and no spacing
	// Required: true
	Topic *string `json:"topic"`
}

// Validate validates this Model create topic request
func (m *ModelCreateTopicRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
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

func (m *ModelCreateTopicRequest) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelCreateTopicRequest) validateTopic(formats strfmt.Registry) error {

	if err := validate.Required("topic", "body", m.Topic); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCreateTopicRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCreateTopicRequest) UnmarshalBinary(b []byte) error {
	var res ModelCreateTopicRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
