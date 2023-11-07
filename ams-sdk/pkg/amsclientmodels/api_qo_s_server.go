// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIQoSServer Api qo S server
//
// swagger:model Api qo S server.
type APIQoSServer struct {

	// alias
	// Required: true
	Alias *string `json:"alias"`

	// ip
	// Required: true
	IP *string `json:"ip"`

	// last_update
	// Required: true
	LastUpdate *APITime `json:"last_update"`

	// port
	// Required: true
	// Format: int32
	Port *int32 `json:"port"`

	// region
	// Required: true
	Region *string `json:"region"`

	// status
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Api qo S server
func (m *APIQoSServer) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAlias(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIP(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastUpdate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePort(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIQoSServer) validateAlias(formats strfmt.Registry) error {

	if err := validate.Required("alias", "body", m.Alias); err != nil {
		return err
	}

	return nil
}

func (m *APIQoSServer) validateIP(formats strfmt.Registry) error {

	if err := validate.Required("ip", "body", m.IP); err != nil {
		return err
	}

	return nil
}

func (m *APIQoSServer) validateLastUpdate(formats strfmt.Registry) error {

	if err := validate.Required("last_update", "body", m.LastUpdate); err != nil {
		return err
	}

	if m.LastUpdate != nil {
		if err := m.LastUpdate.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("last_update")
			}
			return err
		}
	}

	return nil
}

func (m *APIQoSServer) validatePort(formats strfmt.Registry) error {

	if err := validate.Required("port", "body", m.Port); err != nil {
		return err
	}

	return nil
}

func (m *APIQoSServer) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *APIQoSServer) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIQoSServer) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIQoSServer) UnmarshalBinary(b []byte) error {
	var res APIQoSServer
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
