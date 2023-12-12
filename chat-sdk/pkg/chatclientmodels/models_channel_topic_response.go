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

// ModelsChannelTopicResponse Models channel topic response
//
// swagger:model Models channel topic response.
type ModelsChannelTopicResponse struct {

	// createdat
	// Required: true
	// Format: int64
	CreatedAt *int64 `json:"createdAt"`

	// createdby
	// Required: true
	CreatedBy *string `json:"createdBy"`

	// description
	// Required: true
	Description *string `json:"description"`

	// isjoinable
	// Required: true
	IsJoinable *bool `json:"isJoinable"`

	// messageperminutes
	// Required: true
	// Format: double
	MessagePerMinutes *float64 `json:"messagePerMinutes"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// shardlimit
	// Required: true
	// Format: int32
	ShardLimit *int32 `json:"shardLimit"`

	// shardnumber
	// Required: true
	// Format: int32
	ShardNumber *int32 `json:"shardNumber"`

	// topicid
	// Required: true
	TopicID *string `json:"topicId"`

	// totalmember
	// Required: true
	// Format: int32
	TotalMember *int32 `json:"totalMember"`
}

// Validate validates this Models channel topic response
func (m *ModelsChannelTopicResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsJoinable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMessagePerMinutes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateShardLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateShardNumber(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTopicID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalMember(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsChannelTopicResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelTopicResponse) validateCreatedBy(formats strfmt.Registry) error {

	if err := validate.Required("createdBy", "body", m.CreatedBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelTopicResponse) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelTopicResponse) validateIsJoinable(formats strfmt.Registry) error {

	if err := validate.Required("isJoinable", "body", m.IsJoinable); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelTopicResponse) validateMessagePerMinutes(formats strfmt.Registry) error {

	if err := validate.Required("messagePerMinutes", "body", m.MessagePerMinutes); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelTopicResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelTopicResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelTopicResponse) validateShardLimit(formats strfmt.Registry) error {

	if err := validate.Required("shardLimit", "body", m.ShardLimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelTopicResponse) validateShardNumber(formats strfmt.Registry) error {

	if err := validate.Required("shardNumber", "body", m.ShardNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelTopicResponse) validateTopicID(formats strfmt.Registry) error {

	if err := validate.Required("topicId", "body", m.TopicID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelTopicResponse) validateTotalMember(formats strfmt.Registry) error {

	if err := validate.Required("totalMember", "body", m.TotalMember); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsChannelTopicResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsChannelTopicResponse) UnmarshalBinary(b []byte) error {
	var res ModelsChannelTopicResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
