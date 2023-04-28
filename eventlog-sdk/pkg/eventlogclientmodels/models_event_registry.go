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

// ModelsEventRegistry Models event registry
//
// swagger:model Models event registry.
type ModelsEventRegistry struct {

	// eventid
	// Required: true
	// Format: int32
	EventID *int32 `json:"EventID"`

	// eventlevel
	// Required: true
	// Format: int32
	EventLevel *int32 `json:"EventLevel"`

	// eventtype
	// Required: true
	// Format: int32
	EventType *int32 `json:"EventType"`

	// ux
	// Required: true
	// Format: int32
	UX *int32 `json:"UX"`
}

// Validate validates this Models event registry
func (m *ModelsEventRegistry) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEventID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventLevel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUX(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsEventRegistry) validateEventID(formats strfmt.Registry) error {

	if err := validate.Required("EventID", "body", m.EventID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEventRegistry) validateEventLevel(formats strfmt.Registry) error {

	if err := validate.Required("EventLevel", "body", m.EventLevel); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEventRegistry) validateEventType(formats strfmt.Registry) error {

	if err := validate.Required("EventType", "body", m.EventType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEventRegistry) validateUX(formats strfmt.Registry) error {

	if err := validate.Required("UX", "body", m.UX); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsEventRegistry) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsEventRegistry) UnmarshalBinary(b []byte) error {
	var res ModelsEventRegistry
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
