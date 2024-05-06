// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievementclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPSNEvent Models PSN event
//
// swagger:model Models PSN event.
type ModelsPSNEvent struct {

	// datetime
	// Required: true
	DateTime *string `json:"dateTime"`

	// eventdata
	// Required: true
	EventData *ModelsPSNEventData `json:"eventData"`

	// eventid
	// Required: true
	EventID *string `json:"eventId"`

	// version
	// Required: true
	Version *string `json:"version"`
}

// Validate validates this Models PSN event
func (m *ModelsPSNEvent) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDateTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateVersion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPSNEvent) validateDateTime(formats strfmt.Registry) error {

	if err := validate.Required("dateTime", "body", m.DateTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPSNEvent) validateEventData(formats strfmt.Registry) error {

	if err := validate.Required("eventData", "body", m.EventData); err != nil {
		return err
	}

	if m.EventData != nil {
		if err := m.EventData.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("eventData")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsPSNEvent) validateEventID(formats strfmt.Registry) error {

	if err := validate.Required("eventId", "body", m.EventID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPSNEvent) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPSNEvent) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPSNEvent) UnmarshalBinary(b []byte) error {
	var res ModelsPSNEvent
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
