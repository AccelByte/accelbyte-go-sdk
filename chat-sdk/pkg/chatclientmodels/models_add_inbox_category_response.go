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

// ModelsAddInboxCategoryResponse Models add inbox category response
//
// swagger:model Models add inbox category response.
type ModelsAddInboxCategoryResponse struct {

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// expiresin
	// Required: true
	// Format: int64
	ExpiresIn *int64 `json:"expiresIn"`

	// hook
	Hook *ModelsCategoryHook `json:"hook,omitempty"`

	// jsonschema
	JSONSchema interface{} `json:"jsonSchema,omitempty"`

	// name
	// Required: true
	Name *string `json:"name"`

	// saveinbox
	// Required: true
	SaveInbox *bool `json:"saveInbox"`

	// sendnotification
	// Required: true
	SendNotification *bool `json:"sendNotification"`
}

// Validate validates this Models add inbox category response
func (m *ModelsAddInboxCategoryResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpiresIn(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
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

func (m *ModelsAddInboxCategoryResponse) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAddInboxCategoryResponse) validateExpiresIn(formats strfmt.Registry) error {

	if err := validate.Required("expiresIn", "body", m.ExpiresIn); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAddInboxCategoryResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAddInboxCategoryResponse) validateSaveInbox(formats strfmt.Registry) error {

	if err := validate.Required("saveInbox", "body", m.SaveInbox); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAddInboxCategoryResponse) validateSendNotification(formats strfmt.Registry) error {

	if err := validate.Required("sendNotification", "body", m.SendNotification); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAddInboxCategoryResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAddInboxCategoryResponse) UnmarshalBinary(b []byte) error {
	var res ModelsAddInboxCategoryResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
