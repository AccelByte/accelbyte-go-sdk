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

// ModelsChatSnapshotMessage Models chat snapshot message
//
// swagger:model Models chat snapshot message.
type ModelsChatSnapshotMessage struct {

	// chatid
	// Required: true
	ChatID *string `json:"chatId"`

	// createdat
	// Required: true
	// Format: int64
	CreatedAt *int64 `json:"createdAt"`

	// message
	// Required: true
	Message *string `json:"message"`

	// senderid
	// Required: true
	SenderID *string `json:"senderId"`
}

// Validate validates this Models chat snapshot message
func (m *ModelsChatSnapshotMessage) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChatID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSenderID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsChatSnapshotMessage) validateChatID(formats strfmt.Registry) error {

	if err := validate.Required("chatId", "body", m.ChatID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatSnapshotMessage) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatSnapshotMessage) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChatSnapshotMessage) validateSenderID(formats strfmt.Registry) error {

	if err := validate.Required("senderId", "body", m.SenderID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsChatSnapshotMessage) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsChatSnapshotMessage) UnmarshalBinary(b []byte) error {
	var res ModelsChatSnapshotMessage
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
