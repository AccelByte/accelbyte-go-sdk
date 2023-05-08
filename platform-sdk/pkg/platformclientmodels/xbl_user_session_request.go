// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// XblUserSessionRequest Xbl user session request
//
// swagger:model Xbl user session request.
type XblUserSessionRequest struct {

	// game session id
	// Required: true
	GameSessionID *string `json:"gameSessionId"`

	// session objects
	// Required: true
	Payload interface{} `json:"payload"`

	// service config id
	// Required: true
	Scid *string `json:"scid"`

	// session template name
	// Required: true
	SessionTemplateName *string `json:"sessionTemplateName"`
}

// Validate validates this Xbl user session request
func (m *XblUserSessionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGameSessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScid(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTemplateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *XblUserSessionRequest) validateGameSessionID(formats strfmt.Registry) error {

	if err := validate.Required("gameSessionId", "body", m.GameSessionID); err != nil {
		return err
	}

	return nil
}

func (m *XblUserSessionRequest) validateScid(formats strfmt.Registry) error {

	if err := validate.Required("scid", "body", m.Scid); err != nil {
		return err
	}

	return nil
}

func (m *XblUserSessionRequest) validateSessionTemplateName(formats strfmt.Registry) error {

	if err := validate.Required("sessionTemplateName", "body", m.SessionTemplateName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *XblUserSessionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XblUserSessionRequest) UnmarshalBinary(b []byte) error {
	var res XblUserSessionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
