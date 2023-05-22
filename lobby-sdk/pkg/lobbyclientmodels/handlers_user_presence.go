// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// HandlersUserPresence Handlers user presence
//
// swagger:model Handlers user presence.
type HandlersUserPresence struct {

	// activity
	// Required: true
	Activity *string `json:"activity"`

	// availability
	// Required: true
	Availability *string `json:"availability"`

	// lastseenat
	// Required: true
	LastSeenAt *string `json:"lastSeenAt"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// platform
	// Required: true
	Platform *string `json:"platform"`

	// userid
	// Required: true
	UserID *string `json:"userID"`
}

// Validate validates this Handlers user presence
func (m *HandlersUserPresence) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActivity(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAvailability(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastSeenAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatform(formats); err != nil {
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

func (m *HandlersUserPresence) validateActivity(formats strfmt.Registry) error {

	if err := validate.Required("activity", "body", m.Activity); err != nil {
		return err
	}

	return nil
}

func (m *HandlersUserPresence) validateAvailability(formats strfmt.Registry) error {

	if err := validate.Required("availability", "body", m.Availability); err != nil {
		return err
	}

	return nil
}

func (m *HandlersUserPresence) validateLastSeenAt(formats strfmt.Registry) error {

	if err := validate.Required("lastSeenAt", "body", m.LastSeenAt); err != nil {
		return err
	}

	return nil
}

func (m *HandlersUserPresence) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *HandlersUserPresence) validatePlatform(formats strfmt.Registry) error {

	if err := validate.Required("platform", "body", m.Platform); err != nil {
		return err
	}

	return nil
}

func (m *HandlersUserPresence) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *HandlersUserPresence) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *HandlersUserPresence) UnmarshalBinary(b []byte) error {
	var res HandlersUserPresence
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
