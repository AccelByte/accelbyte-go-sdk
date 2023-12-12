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

// ModelsUpdateInboxCategoryRequest Models update inbox category request
//
// swagger:model Models update inbox category request.
type ModelsUpdateInboxCategoryRequest struct {

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// expiresin
	// Required: true
	// Format: int64
	ExpiresIn *int64 `json:"expiresIn"`

	// hook
	// Required: true
	Hook *ModelsCategoryHook `json:"hook"`

	// jsonschema
	JSONSchema interface{} `json:"jsonSchema,omitempty"`

	// saveinbox
	// Required: true
	SaveInbox *bool `json:"saveInbox"`

	// sendnotification
	// Required: true
	SendNotification *bool `json:"sendNotification"`
}

// Validate validates this Models update inbox category request
func (m *ModelsUpdateInboxCategoryRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpiresIn(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHook(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSaveInbox(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSendNotification(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateInboxCategoryRequest) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateInboxCategoryRequest) validateExpiresIn(formats strfmt.Registry) error {

	if err := validate.Required("expiresIn", "body", m.ExpiresIn); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateInboxCategoryRequest) validateHook(formats strfmt.Registry) error {

	if err := validate.Required("hook", "body", m.Hook); err != nil {
		return err
	}

	if m.Hook != nil {
		if err := m.Hook.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("hook")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsUpdateInboxCategoryRequest) validateSaveInbox(formats strfmt.Registry) error {

	if err := validate.Required("saveInbox", "body", m.SaveInbox); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateInboxCategoryRequest) validateSendNotification(formats strfmt.Registry) error {

	if err := validate.Required("sendNotification", "body", m.SendNotification); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateInboxCategoryRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateInboxCategoryRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateInboxCategoryRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
