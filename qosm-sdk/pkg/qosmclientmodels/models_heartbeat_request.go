// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package qosmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsHeartbeatRequest Models heartbeat request
//
// swagger:model Models heartbeat request.
type ModelsHeartbeatRequest struct {

	// ip
	// Required: true
	IP *string `json:"ip"`

	// port
	// Required: true
	// Format: int32
	Port *int32 `json:"port"`

	// region
	// Required: true
	Region *string `json:"region"`
}

// Validate validates this Models heartbeat request
func (m *ModelsHeartbeatRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIP(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePort(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsHeartbeatRequest) validateIP(formats strfmt.Registry) error {

	if err := validate.Required("ip", "body", m.IP); err != nil {
		return err
	}

	return nil
}

func (m *ModelsHeartbeatRequest) validatePort(formats strfmt.Registry) error {

	if err := validate.Required("port", "body", m.Port); err != nil {
		return err
	}

	return nil
}

func (m *ModelsHeartbeatRequest) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsHeartbeatRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsHeartbeatRequest) UnmarshalBinary(b []byte) error {
	var res ModelsHeartbeatRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
