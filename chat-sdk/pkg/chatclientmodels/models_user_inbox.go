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

// ModelsUserInbox Models user inbox
//
// swagger:model Models user inbox.
type ModelsUserInbox struct {

	// keep
	// Required: true
	Keep *bool `json:"keep"`

	// readat
	// Required: true
	// Format: int64
	ReadAt *int64 `json:"readAt"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models user inbox
func (m *ModelsUserInbox) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateKeep(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReadAt(formats); err != nil {
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

func (m *ModelsUserInbox) validateKeep(formats strfmt.Registry) error {

	if err := validate.Required("keep", "body", m.Keep); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserInbox) validateReadAt(formats strfmt.Registry) error {

	if err := validate.Required("readAt", "body", m.ReadAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserInbox) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserInbox) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserInbox) UnmarshalBinary(b []byte) error {
	var res ModelsUserInbox
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
