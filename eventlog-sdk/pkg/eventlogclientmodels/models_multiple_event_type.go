// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package eventlogclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMultipleEventType Models multiple event type
//
// swagger:model Models multiple event type.
type ModelsMultipleEventType struct {

	// eventtype
	// Required: true
	EventType []*ModelsEventType `json:"EventType"`
}

// Validate validates this Models multiple event type
func (m *ModelsMultipleEventType) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEventType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMultipleEventType) validateEventType(formats strfmt.Registry) error {

	if err := validate.Required("EventType", "body", m.EventType); err != nil {
		return err
	}

	for i := 0; i < len(m.EventType); i++ {
		if swag.IsZero(m.EventType[i]) { // not required
			continue
		}

		if m.EventType[i] != nil {
			if err := m.EventType[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("EventType" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMultipleEventType) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMultipleEventType) UnmarshalBinary(b []byte) error {
	var res ModelsMultipleEventType
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
