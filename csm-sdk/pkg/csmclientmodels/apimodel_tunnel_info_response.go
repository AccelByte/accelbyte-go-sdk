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

// ApimodelTunnelInfoResponse Apimodel tunnel info response
//
// swagger:model Apimodel tunnel info response.
type ApimodelTunnelInfoResponse struct {

	// tunnel
	// Required: true
	Tunnel *ResourceaccesstunnelTunnelInfo `json:"tunnel"`
}

// Validate validates this Apimodel tunnel info response
func (m *ApimodelTunnelInfoResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTunnel(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelTunnelInfoResponse) validateTunnel(formats strfmt.Registry) error {

	if err := validate.Required("tunnel", "body", m.Tunnel); err != nil {
		return err
	}

	if m.Tunnel != nil {
		if err := m.Tunnel.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("tunnel")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelTunnelInfoResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelTunnelInfoResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelTunnelInfoResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
