// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gametelemetryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// GetNamespaceEventResponse Get namespace event response
//
// swagger:model Get namespace event response.
type GetNamespaceEventResponse struct {

	// eventid
	// Required: true
	EventID *string `json:"EventId"`

	// eventname
	// Required: true
	EventName *string `json:"EventName"`

	// eventnamespace
	// Required: true
	EventNamespace *string `json:"EventNamespace"`

	// eventtimestamp
	// Required: true
	EventTimestamp *string `json:"EventTimestamp"`

	// flightid
	FlightID string `json:"FlightId,omitempty"`

	// payload
	Payload interface{} `json:"Payload,omitempty"`

	// userid
	UserID string `json:"UserId,omitempty"`

	// usernamespace
	UserNamespace string `json:"UserNamespace,omitempty"`
}

// Validate validates this Get namespace event response
func (m *GetNamespaceEventResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEventID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventTimestamp(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GetNamespaceEventResponse) validateEventID(formats strfmt.Registry) error {

	if err := validate.Required("EventId", "body", m.EventID); err != nil {
		return err
	}

	return nil
}

func (m *GetNamespaceEventResponse) validateEventName(formats strfmt.Registry) error {

	if err := validate.Required("EventName", "body", m.EventName); err != nil {
		return err
	}

	return nil
}

func (m *GetNamespaceEventResponse) validateEventNamespace(formats strfmt.Registry) error {

	if err := validate.Required("EventNamespace", "body", m.EventNamespace); err != nil {
		return err
	}

	return nil
}

func (m *GetNamespaceEventResponse) validateEventTimestamp(formats strfmt.Registry) error {

	if err := validate.Required("EventTimestamp", "body", m.EventTimestamp); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GetNamespaceEventResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GetNamespaceEventResponse) UnmarshalBinary(b []byte) error {
	var res GetNamespaceEventResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
