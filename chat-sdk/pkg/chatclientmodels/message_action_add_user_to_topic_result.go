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

// MessageActionAddUserToTopicResult Message action add user to topic result
//
// swagger:model Message action add user to topic result.
type MessageActionAddUserToTopicResult struct {

	// processed
	// Required: true
	// Format: int64
	Processed *int64 `json:"processed"`

	// topicid
	// Required: true
	TopicID *string `json:"topicId"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Message action add user to topic result
func (m *MessageActionAddUserToTopicResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateProcessed(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTopicID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *MessageActionAddUserToTopicResult) validateProcessed(formats strfmt.Registry) error {

	if err := validate.Required("processed", "body", m.Processed); err != nil {
		return err
	}

	return nil
}

func (m *MessageActionAddUserToTopicResult) validateTopicID(formats strfmt.Registry) error {

	if err := validate.Required("topicId", "body", m.TopicID); err != nil {
		return err
	}

	return nil
}

func (m *MessageActionAddUserToTopicResult) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *MessageActionAddUserToTopicResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *MessageActionAddUserToTopicResult) UnmarshalBinary(b []byte) error {
	var res MessageActionAddUserToTopicResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
