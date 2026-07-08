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

// ModelsChatMessageResponse Models chat message response
//
// swagger:model Models chat message response.
type ModelsChatMessageResponse struct {

	// from
	// Required: true
	From *string `json:"from"`

	// id
	// Required: true
	ID *string `json:"id"`

	// message
	// Required: true
	Message *string `json:"message"`

	// metadata
	// Required: true
	Metadata *string `json:"metadata"`

	// readat
	// Format: int64
	ReadAt int64 `json:"readAt,omitempty"`

	// receivedat
	// Format: int64
	ReceivedAt int64 `json:"receivedAt,omitempty"`

	// topicid
	// Required: true
	TopicID *string `json:"topicId"`
}

// Validate validates this Models chat message response
func (m *ModelsChatMessageResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFrom(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMetadata(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTopicID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsChatMessageResponse) validateFrom(formats strfmt.Registry) error {

	if err := validate.Required("from", "body", m.From); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatMessageResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatMessageResponse) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatMessageResponse) validateMetadata(formats strfmt.Registry) error {

	if err := validate.Required("metadata", "body", m.Metadata); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatMessageResponse) validateTopicID(formats strfmt.Registry) error {

	if err := validate.Required("topicId", "body", m.TopicID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsChatMessageResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsChatMessageResponse) UnmarshalBinary(b []byte) error {
	var res ModelsChatMessageResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
