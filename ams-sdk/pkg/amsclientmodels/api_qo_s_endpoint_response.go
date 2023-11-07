// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIQoSEndpointResponse Api qo S endpoint response
//
// swagger:model Api qo S endpoint response.
type APIQoSEndpointResponse struct {

	// servers
	// Required: true
	Servers []*APIQoSServer `json:"servers"`
}

// Validate validates this Api qo S endpoint response
func (m *APIQoSEndpointResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateServers(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIQoSEndpointResponse) validateServers(formats strfmt.Registry) error {

	if err := validate.Required("servers", "body", m.Servers); err != nil {
		return err
	}

	for i := 0; i < len(m.Servers); i++ {
		if swag.IsZero(m.Servers[i]) { // not required
			continue
		}

		if m.Servers[i] != nil {
			if err := m.Servers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("servers" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIQoSEndpointResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIQoSEndpointResponse) UnmarshalBinary(b []byte) error {
	var res APIQoSEndpointResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
