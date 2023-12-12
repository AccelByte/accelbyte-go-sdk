// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsChatSnapshots Models chat snapshots
//
// swagger:model Models chat snapshots.
type ModelsChatSnapshots struct {

	// chatid
	// Required: true
	ChatID *string `json:"chatId"`

	// createdat
	// Required: true
	// Format: int64
	CreatedAt *int64 `json:"createdAt"`

	// joinedtopics
	// Required: true
	JoinedTopics []string `json:"joinedTopics"`

	// messages
	// Required: true
	Messages []*ModelsChatSnapshotMessage `json:"messages"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// senderid
	// Required: true
	SenderID *string `json:"senderId"`

	// ticketid
	// Required: true
	TicketID *string `json:"ticketId"`

	// topicid
	// Required: true
	TopicID *string `json:"topicId"`
}

// Validate validates this Models chat snapshots
func (m *ModelsChatSnapshots) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChatID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJoinedTopics(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMessages(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSenderID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketID(formats); err != nil {
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

func (m *ModelsChatSnapshots) validateChatID(formats strfmt.Registry) error {

	if err := validate.Required("chatId", "body", m.ChatID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatSnapshots) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatSnapshots) validateJoinedTopics(formats strfmt.Registry) error {

	if err := validate.Required("joinedTopics", "body", m.JoinedTopics); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatSnapshots) validateMessages(formats strfmt.Registry) error {

	if err := validate.Required("messages", "body", m.Messages); err != nil {
		return err
	}

	for i := 0; i < len(m.Messages); i++ {
		if swag.IsZero(m.Messages[i]) { // not required
			continue
		}

		if m.Messages[i] != nil {
			if err := m.Messages[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("messages" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsChatSnapshots) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatSnapshots) validateSenderID(formats strfmt.Registry) error {

	if err := validate.Required("senderId", "body", m.SenderID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatSnapshots) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticketId", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatSnapshots) validateTopicID(formats strfmt.Registry) error {

	if err := validate.Required("topicId", "body", m.TopicID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsChatSnapshots) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsChatSnapshots) UnmarshalBinary(b []byte) error {
	var res ModelsChatSnapshots
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
