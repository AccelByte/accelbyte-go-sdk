// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMessageRequest Models message request
//
// swagger:model Models message request.
type ModelsMessageRequest struct {

	// message
	// Required: true
	Message *string `json:"message"`

	// timestamp
	// Format: int64
	Timestamp int64 `json:"timestamp,omitempty"`

	// topicid
	TopicID string `json:"topicId,omitempty"`

	// topictype
	// Enum: ['GROUP', 'PERSONAL']
	TopicType string `json:"topicType,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Models message request
func (m *ModelsMessageRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMessage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMessageRequest) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

var modelsMessageRequestTypeTopicTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["GROUP", "PERSONAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsMessageRequestTypeTopicTypePropEnum = append(modelsMessageRequestTypeTopicTypePropEnum, v)
	}
}

const (

	// ModelsMessageRequestTopicTypeGROUP captures enum value "GROUP"
	ModelsMessageRequestTopicTypeGROUP string = "GROUP"

	// ModelsMessageRequestTopicTypePERSONAL captures enum value "PERSONAL"
	ModelsMessageRequestTopicTypePERSONAL string = "PERSONAL"
)

// prop value enum
func (m *ModelsMessageRequest) validateTopicTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsMessageRequestTypeTopicTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMessageRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMessageRequest) UnmarshalBinary(b []byte) error {
	var res ModelsMessageRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
