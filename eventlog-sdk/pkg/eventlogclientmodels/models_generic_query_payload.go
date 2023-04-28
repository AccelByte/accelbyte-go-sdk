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

// ModelsGenericQueryPayload Models generic query payload
//
// swagger:model Models generic query payload.
type ModelsGenericQueryPayload struct {

	// clientid
	// Required: true
	ClientID *string `json:"clientId"`

	// eventname
	// Required: true
	EventName *string `json:"eventName"`

	// payloadquery
	// Required: true
	PayloadQuery interface{} `json:"payloadQuery"`

	// sessionid
	// Required: true
	SessionID *string `json:"sessionId"`

	// traceid
	// Required: true
	TraceID *string `json:"traceId"`

	// userid
	// Required: true
	UserID *string `json:"userId"`

	// version
	// Required: true
	// Format: int32
	Version *int32 `json:"version"`
}

// Validate validates this Models generic query payload
func (m *ModelsGenericQueryPayload) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTraceID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
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

func (m *ModelsGenericQueryPayload) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("clientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGenericQueryPayload) validateEventName(formats strfmt.Registry) error {

	if err := validate.Required("eventName", "body", m.EventName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGenericQueryPayload) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("sessionId", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGenericQueryPayload) validateTraceID(formats strfmt.Registry) error {

	if err := validate.Required("traceId", "body", m.TraceID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGenericQueryPayload) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGenericQueryPayload) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGenericQueryPayload) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGenericQueryPayload) UnmarshalBinary(b []byte) error {
	var res ModelsGenericQueryPayload
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
