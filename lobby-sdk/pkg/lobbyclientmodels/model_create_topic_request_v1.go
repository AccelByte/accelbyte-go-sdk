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

// ModelCreateTopicRequestV1 Model create topic request V1
//
// swagger:model Model create topic request V1.
type ModelCreateTopicRequestV1 struct {

	// topic description
	// Required: true
	Description *string `json:"description"`

	// topic name, should be alphabets, no special char except underscore, uppercase and no spacing
	// Required: true
	TopicName *string `json:"topicName"`
}

// Validate validates this Model create topic request V1
func (m *ModelCreateTopicRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
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

func (m *ModelCreateTopicRequestV1) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelCreateTopicRequestV1) validateTopicName(formats strfmt.Registry) error {

	if err := validate.Required("topicName", "body", m.TopicName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCreateTopicRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCreateTopicRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelCreateTopicRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
