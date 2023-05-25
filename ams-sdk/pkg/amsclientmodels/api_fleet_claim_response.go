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

// APIFleetClaimResponse Api fleet claim response
//
// swagger:model Api fleet claim response.
type APIFleetClaimResponse struct {

	// ip
	// Required: true
	IP *string `json:"ip"`

	// ports
	// Required: true
	Ports map[string]int64 `json:"ports"`

	// serverid
	// Required: true
	ServerID *string `json:"serverId"`
}

// Validate validates this Api fleet claim response
func (m *APIFleetClaimResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIP(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServerID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetClaimResponse) validateIP(formats strfmt.Registry) error {

	if err := validate.Required("ip", "body", m.IP); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetClaimResponse) validateServerID(formats strfmt.Registry) error {

	if err := validate.Required("serverId", "body", m.ServerID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetClaimResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetClaimResponse) UnmarshalBinary(b []byte) error {
	var res APIFleetClaimResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
