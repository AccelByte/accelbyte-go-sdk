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

// ModelsEvent Models event
//
// swagger:model Models event.
type ModelsEvent struct {

	// agenttype
	// Required: true
	// Format: integer
	AgentType *int64 `json:"AgentType"`

	// clientid
	// Required: true
	ClientID *string `json:"ClientID"`

	// componentid
	// Required: true
	// Format: integer
	ComponentID *int64 `json:"ComponentID"`

	// eventid
	// Required: true
	// Format: integer
	EventID *int64 `json:"EventID"`

	// eventlevel
	// Required: true
	// Format: integer
	EventLevel *int64 `json:"EventLevel"`

	// eventtype
	// Required: true
	// Format: integer
	EventType *int64 `json:"EventType"`

	// ipaddress
	// Required: true
	IPAddress *string `json:"IPAddress"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// realm
	// Required: true
	Realm *string `json:"Realm"`

	// targetnamespace
	// Required: true
	TargetNamespace *string `json:"TargetNamespace"`

	// targetuserid
	// Required: true
	TargetUserID *string `json:"TargetUserID"`

	// time
	// Required: true
	Time *string `json:"Time"`

	// ux
	// Required: true
	// Format: byte
	UX *int64 `json:"UX"`

	// userid
	// Required: true
	UserID *string `json:"UserID"`
}

// Validate validates this Models event
func (m *ModelsEvent) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAgentType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateComponentID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventLevel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIPAddress(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRealm(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUX(formats); err != nil {
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

func (m *ModelsEvent) validateAgentType(formats strfmt.Registry) error {

	if err := validate.Required("AgentType", "body", m.AgentType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("ClientID", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateComponentID(formats strfmt.Registry) error {

	if err := validate.Required("ComponentID", "body", m.ComponentID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateEventID(formats strfmt.Registry) error {

	if err := validate.Required("EventID", "body", m.EventID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateEventLevel(formats strfmt.Registry) error {

	if err := validate.Required("EventLevel", "body", m.EventLevel); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateEventType(formats strfmt.Registry) error {

	if err := validate.Required("EventType", "body", m.EventType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateIPAddress(formats strfmt.Registry) error {

	if err := validate.Required("IPAddress", "body", m.IPAddress); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateRealm(formats strfmt.Registry) error {

	if err := validate.Required("Realm", "body", m.Realm); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateTargetNamespace(formats strfmt.Registry) error {

	if err := validate.Required("TargetNamespace", "body", m.TargetNamespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateTargetUserID(formats strfmt.Registry) error {

	if err := validate.Required("TargetUserID", "body", m.TargetUserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateTime(formats strfmt.Registry) error {

	if err := validate.Required("Time", "body", m.Time); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateUX(formats strfmt.Registry) error {

	if err := validate.Required("UX", "body", m.UX); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEvent) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsEvent) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsEvent) UnmarshalBinary(b []byte) error {
	var res ModelsEvent
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
