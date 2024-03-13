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

// APIFleetServerConnectionInfoResponse Api fleet server connection info response
//
// swagger:model Api fleet server connection info response.
type APIFleetServerConnectionInfoResponse struct {

	// expiresat
	// Required: true
	ExpiresAt *APITime `json:"expiresAt"`

	// host
	// Required: true
	Host *string `json:"host"`

	// logstreamport
	// Required: true
	// Format: int32
	LogstreamPort *int32 `json:"logstreamPort"`

	// secret
	// Required: true
	Secret *string `json:"secret"`
}

// Validate validates this Api fleet server connection info response
func (m *APIFleetServerConnectionInfoResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExpiresAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHost(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLogstreamPort(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSecret(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetServerConnectionInfoResponse) validateExpiresAt(formats strfmt.Registry) error {

	if err := validate.Required("expiresAt", "body", m.ExpiresAt); err != nil {
		return err
	}

	if m.ExpiresAt != nil {
		if err := m.ExpiresAt.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("expiresAt")
			}
			return err
		}
	}

	return nil
}

func (m *APIFleetServerConnectionInfoResponse) validateHost(formats strfmt.Registry) error {

	if err := validate.Required("host", "body", m.Host); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerConnectionInfoResponse) validateLogstreamPort(formats strfmt.Registry) error {

	if err := validate.Required("logstreamPort", "body", m.LogstreamPort); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerConnectionInfoResponse) validateSecret(formats strfmt.Registry) error {

	if err := validate.Required("secret", "body", m.Secret); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetServerConnectionInfoResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetServerConnectionInfoResponse) UnmarshalBinary(b []byte) error {
	var res APIFleetServerConnectionInfoResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
