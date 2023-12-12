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

// APIUpdateTopicParams Api update topic params
//
// swagger:model Api update topic params.
type APIUpdateTopicParams struct {

	// description
	// Required: true
	Description *string `json:"description"`

	// isjoinable
	// Required: true
	IsJoinable *bool `json:"isJoinable"`

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this Api update topic params
func (m *APIUpdateTopicParams) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsJoinable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIUpdateTopicParams) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *APIUpdateTopicParams) validateIsJoinable(formats strfmt.Registry) error {

	if err := validate.Required("isJoinable", "body", m.IsJoinable); err != nil {
		return err
	}

	return nil
}

func (m *APIUpdateTopicParams) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIUpdateTopicParams) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIUpdateTopicParams) UnmarshalBinary(b []byte) error {
	var res APIUpdateTopicParams
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
