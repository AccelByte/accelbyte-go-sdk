// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dslogmanagerclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsNotifPayloadServerStatusChange Models notif payload server status change
//
// swagger:model Models notif payload server status change.
type ModelsNotifPayloadServerStatusChange struct {

	// match
	// Required: true
	Match *ModelsMatchResult `json:"match"`

	// server
	// Required: true
	Server *ModelsServer `json:"server"`
}

// Validate validates this Models notif payload server status change
func (m *ModelsNotifPayloadServerStatusChange) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatch(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServer(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsNotifPayloadServerStatusChange) validateMatch(formats strfmt.Registry) error {

	if err := validate.Required("match", "body", m.Match); err != nil {
		return err
	}

	if m.Match != nil {
		if err := m.Match.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("match")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsNotifPayloadServerStatusChange) validateServer(formats strfmt.Registry) error {

	if err := validate.Required("server", "body", m.Server); err != nil {
		return err
	}

	if m.Server != nil {
		if err := m.Server.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("server")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsNotifPayloadServerStatusChange) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsNotifPayloadServerStatusChange) UnmarshalBinary(b []byte) error {
	var res ModelsNotifPayloadServerStatusChange
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
