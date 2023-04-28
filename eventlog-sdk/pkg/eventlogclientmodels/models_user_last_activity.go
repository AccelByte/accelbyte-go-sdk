// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package eventlogclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUserLastActivity Models user last activity
//
// swagger:model Models user last activity.
type ModelsUserLastActivity struct {

	// lastactivitytime
	// Required: true
	// Format: date-time
	LastActivityTime strfmt.DateTime `json:"LastActivityTime"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// userid
	// Required: true
	UserID *string `json:"UserID"`
}

// Validate validates this Models user last activity
func (m *ModelsUserLastActivity) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLastActivityTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *ModelsUserLastActivity) validateLastActivityTime(formats strfmt.Registry) error {

	if err := validate.Required("LastActivityTime", "body", strfmt.DateTime(m.LastActivityTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("LastActivityTime", "body", "date-time", m.LastActivityTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserLastActivity) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserLastActivity) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserLastActivity) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserLastActivity) UnmarshalBinary(b []byte) error {
	var res ModelsUserLastActivity
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
