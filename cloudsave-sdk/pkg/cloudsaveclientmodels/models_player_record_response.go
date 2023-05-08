// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPlayerRecordResponse Models player record response
//
// swagger:model Models player record response.
type ModelsPlayerRecordResponse struct {

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// Indicate whether the player record is a public record or not
	// Required: true
	IsPublic *bool `json:"is_public"`

	// key
	// Required: true
	Key *string `json:"key"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// Indicate which party that could modify the record
	SetBy string `json:"set_by,omitempty"`

	// updated_at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updated_at"`

	// user_id
	// Required: true
	UserID *string `json:"user_id"`

	// value
	// Required: true
	Value interface{} `json:"value"`
}

// Validate validates this Models player record response
func (m *ModelsPlayerRecordResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsPublic(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateKey(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

func (m *ModelsPlayerRecordResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPlayerRecordResponse) validateIsPublic(formats strfmt.Registry) error {

	if err := validate.Required("is_public", "body", m.IsPublic); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPlayerRecordResponse) validateKey(formats strfmt.Registry) error {

	if err := validate.Required("key", "body", m.Key); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPlayerRecordResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPlayerRecordResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updated_at", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updated_at", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPlayerRecordResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPlayerRecordResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPlayerRecordResponse) UnmarshalBinary(b []byte) error {
	var res ModelsPlayerRecordResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
