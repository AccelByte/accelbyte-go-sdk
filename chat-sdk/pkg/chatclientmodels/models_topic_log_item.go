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

// ModelsTopicLogItem Models topic log item
//
// swagger:model Models topic log item.
type ModelsTopicLogItem struct {

	// createdat
	// Required: true
	// Format: int64
	CreatedAt *int64 `json:"createdAt"`

	// id
	// Required: true
	ID *string `json:"id"`

	// message
	// Required: true
	Message *string `json:"message"`

	// senderid
	// Required: true
	SenderID *string `json:"senderId"`

	// topicid
	// Required: true
	TopicID *string `json:"topicId"`

	// type
	// Enum: ['TOPIC_CREATE', 'TOPIC_DELETE', 'TOPIC_JOIN', 'TOPIC_LEAVE']
	// Required: true
	Type *string `json:"type"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models topic log item
func (m *ModelsTopicLogItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSenderID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTopicID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
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

func (m *ModelsTopicLogItem) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTopicLogItem) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTopicLogItem) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTopicLogItem) validateSenderID(formats strfmt.Registry) error {

	if err := validate.Required("senderId", "body", m.SenderID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTopicLogItem) validateTopicID(formats strfmt.Registry) error {

	if err := validate.Required("topicId", "body", m.TopicID); err != nil {
		return err
	}

	return nil
}

var modelsTopicLogItemTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["TOPIC_CREATE", "TOPIC_DELETE", "TOPIC_JOIN", "TOPIC_LEAVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsTopicLogItemTypeTypePropEnum = append(modelsTopicLogItemTypeTypePropEnum, v)
	}
}

const (

	// ModelsTopicLogItemTypeTOPICCREATE captures enum value "TOPIC_CREATE"
	ModelsTopicLogItemTypeTOPICCREATE string = "TOPIC_CREATE"

	// ModelsTopicLogItemTypeTOPICDELETE captures enum value "TOPIC_DELETE"
	ModelsTopicLogItemTypeTOPICDELETE string = "TOPIC_DELETE"

	// ModelsTopicLogItemTypeTOPICJOIN captures enum value "TOPIC_JOIN"
	ModelsTopicLogItemTypeTOPICJOIN string = "TOPIC_JOIN"

	// ModelsTopicLogItemTypeTOPICLEAVE captures enum value "TOPIC_LEAVE"
	ModelsTopicLogItemTypeTOPICLEAVE string = "TOPIC_LEAVE"
)

// prop value enum
func (m *ModelsTopicLogItem) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsTopicLogItemTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsTopicLogItem) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTopicLogItem) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsTopicLogItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsTopicLogItem) UnmarshalBinary(b []byte) error {
	var res ModelsTopicLogItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
