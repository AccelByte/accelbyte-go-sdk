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

// APICreateTopicResponse Api create topic response
//
// swagger:model Api create topic response.
type APICreateTopicResponse struct {

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

	// ischannel
	// Required: true
	IsChannel *bool `json:"isChannel"`

	// isjoinable
	// Required: true
	IsJoinable *bool `json:"isJoinable"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// topicid
	// Required: true
	TopicID *string `json:"topicId"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Api create topic response
func (m *APICreateTopicResponse) Validate(formats strfmt.Registry) error {
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
	if err := m.validateIsChannel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsJoinable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTopicID(formats); err != nil {
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

func (m *APICreateTopicResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicResponse) validateCreatedBy(formats strfmt.Registry) error {

	if err := validate.Required("createdBy", "body", m.CreatedBy); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicResponse) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicResponse) validateIsChannel(formats strfmt.Registry) error {

	if err := validate.Required("isChannel", "body", m.IsChannel); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicResponse) validateIsJoinable(formats strfmt.Registry) error {

	if err := validate.Required("isJoinable", "body", m.IsJoinable); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicResponse) validateTopicID(formats strfmt.Registry) error {

	if err := validate.Required("topicId", "body", m.TopicID); err != nil {
		return err
	}

	return nil
}

func (m *APICreateTopicResponse) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APICreateTopicResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APICreateTopicResponse) UnmarshalBinary(b []byte) error {
	var res APICreateTopicResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
