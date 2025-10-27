// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ResourceaccesstunnelTunnelInfo Resourceaccesstunnel tunnel info
//
// swagger:model Resourceaccesstunnel tunnel info.
type ResourceaccesstunnelTunnelInfo struct {

	// endpoint
	// Required: true
	Endpoint *string `json:"endpoint"`

	// name
	// Required: true
	Name *string `json:"name"`

	// token
	// Required: true
	Token *string `json:"token"`
}

// Validate validates this Resourceaccesstunnel tunnel info
func (m *ResourceaccesstunnelTunnelInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEndpoint(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateToken(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ResourceaccesstunnelTunnelInfo) validateEndpoint(formats strfmt.Registry) error {

	if err := validate.Required("endpoint", "body", m.Endpoint); err != nil {
		return err
	}

	return nil
}

func (m *ResourceaccesstunnelTunnelInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ResourceaccesstunnelTunnelInfo) validateToken(formats strfmt.Registry) error {

	if err := validate.Required("token", "body", m.Token); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ResourceaccesstunnelTunnelInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ResourceaccesstunnelTunnelInfo) UnmarshalBinary(b []byte) error {
	var res ResourceaccesstunnelTunnelInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
