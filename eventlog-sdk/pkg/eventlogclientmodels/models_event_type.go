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

// ModelsEventType Models event type
//
// swagger:model Models event type.
type ModelsEventType struct {

	// description
	// Required: true
	Description *string `json:"Description"`

	// eventtype
	// Required: true
	// Format: int32
	EventType *int32 `json:"EventType"`
}

// Validate validates this Models event type
func (m *ModelsEventType) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsEventType) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("Description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEventType) validateEventType(formats strfmt.Registry) error {

	if err := validate.Required("EventType", "body", m.EventType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsEventType) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsEventType) UnmarshalBinary(b []byte) error {
	var res ModelsEventType
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
