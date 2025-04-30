// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGetListTopicKafkaResponse Models get list topic kafka response
//
// swagger:model Models get list topic kafka response.
type ModelsGetListTopicKafkaResponse struct {

	// topicname
	// Required: true
	TopicName []string `json:"topicName"`
}

// Validate validates this Models get list topic kafka response
func (m *ModelsGetListTopicKafkaResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTopicName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetListTopicKafkaResponse) validateTopicName(formats strfmt.Registry) error {

	if err := validate.Required("topicName", "body", m.TopicName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetListTopicKafkaResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetListTopicKafkaResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGetListTopicKafkaResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
