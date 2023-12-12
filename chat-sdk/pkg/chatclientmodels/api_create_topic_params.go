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

// APICreateTopicParams Api create topic params
//
// swagger:model Api create topic params.
type APICreateTopicParams struct {

	// admins
	// Required: true
	Admins []string `json:"admins"`

	// description
	// Required: true
	Description *string `json:"description"`

	// ischannel
	// Required: true
	IsChannel *bool `json:"isChannel"`

	// isjoinable
	// Required: true
	IsJoinable *bool `json:"isJoinable"`

	// members
	// Required: true
	Members []string `json:"members"`

	// name
	// Required: true
	Name *string `json:"name"`

	// shardlimit
	// Format: int32
	ShardLimit int32 `json:"shardLimit,omitempty"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Api create topic params
func (m *APICreateTopicParams) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAdmins(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsChannel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsJoinable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMembers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APICreateTopicParams) validateAdmins(formats strfmt.Registry) error {

	if err := validate.Required("admins", "body", m.Admins); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicParams) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicParams) validateIsChannel(formats strfmt.Registry) error {

	if err := validate.Required("isChannel", "body", m.IsChannel); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicParams) validateIsJoinable(formats strfmt.Registry) error {

	if err := validate.Required("isJoinable", "body", m.IsJoinable); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicParams) validateMembers(formats strfmt.Registry) error {

	if err := validate.Required("members", "body", m.Members); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicParams) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicParams) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APICreateTopicParams) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APICreateTopicParams) UnmarshalBinary(b []byte) error {
	var res APICreateTopicParams
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
