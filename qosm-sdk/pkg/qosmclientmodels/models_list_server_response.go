// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package qosmclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsListServerResponse Models list server response
//
// swagger:model Models list server response.
type ModelsListServerResponse struct {

	// servers
	// Required: true
	Servers []*ModelsServer `json:"servers"`
}

// Validate validates this Models list server response
func (m *ModelsListServerResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateServers(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsListServerResponse) validateServers(formats strfmt.Registry) error {

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
func (m *ModelsListServerResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsListServerResponse) UnmarshalBinary(b []byte) error {
	var res ModelsListServerResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
